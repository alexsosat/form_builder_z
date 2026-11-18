import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../fields/field.dart';
import '../models/form_entity.dart';
import '../src/dummy_value_initializer.dart';

typedef FormSubmit = FutureOr<void> Function(Map<String, dynamic> values);
typedef FormLayoutBuilder = Widget Function(
  BuildContext context,
  List<Widget> children,
);
typedef FormSubmitButtonBuilder = Widget Function(
  BuildContext context,
  VoidCallback? submit,
  bool isSubmitting,
);

/// Generates widgets for an existing form without changing its model contract.
///
/// The form must implement `save()` to persist its input replacements. Keep the
/// field names, types, and layout fixed while mounted. Use one widget per form instance.
abstract class FormWidget<T extends FormEntity> extends StatefulWidget {
  const FormWidget({
    super.key,
    required this.form,
    this.layoutBuilder,
    this.mainAxisSpacing = 16,
    this.crossAxisSpacing = 16,
    this.header,
    this.footer,
    this.padding = EdgeInsets.zero,
    this.enabled = true,
    this.useDummyValues = true,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.onSubmit,
    this.onFailure,
    this.onChanged,
    this.submitLabel = 'Submit',
    this.submitButtonBuilder,
  }) : assert(mainAxisSpacing >= 0),
       assert(crossAxisSpacing >= 0);

  final T form;

  /// Individual fields stack vertically. One-level lists create equal-width rows.
  /// Use Field.widget() to embed non-input content.
  List<Object> fields();
  final FormLayoutBuilder? layoutBuilder;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final Widget? header;
  final Widget? footer;
  final EdgeInsetsGeometry padding;
  final bool enabled;

  /// Seed declared dummy values once on initial binding, only in debug mode.
  /// Existing values and dirty inputs are preserved. Seeding uses form.save().
  final bool useDummyValues;
  final AutovalidateMode autovalidateMode;
  final FormSubmit? onSubmit;
  final ValueChanged<Map<String, String>>? onFailure;
  final void Function(String fieldName, dynamic typedValue)? onChanged;
  final String submitLabel;
  final FormSubmitButtonBuilder? submitButtonBuilder;

  @override
  FormWidgetState createState() => FormWidgetState();
}

class FormWidgetState extends State<FormWidget> {
  static final _owners = Expando<FormWidgetState>();
  static final _dummyValues = DummyValueInitializer();
  late GlobalKey<FormBuilderState> _formKey;
  late Map<String, dynamic> _lastValues;
  bool _syncing = false;
  bool _needsDummyInitialization = true;
  bool _isSubmitting = false;
  int _revision = 0;
  int _submissionRevision = 0;
  bool _syncScheduled = false;
  final _pendingChanges = <String, dynamic>{};
  final _fieldKeys = <String, GlobalKey>{};
  final _contentKeys = <int, GlobalKey>{};

  List<Object>? _layoutShape;
  List<Object> _layout = [];
  List<Field> _fields = [];

  bool get isSubmitting => _isSubmitting;

  /// Model, draft conversion, and registered-field errors by input name.
  Map<String, String> get errors {
    final result = <String, String>{};
    for (final field in _fields) {
      if (field.hidden) continue;
      final modelError = field.inputFor(widget.form).error;
      if (modelError != null) result[field.name] = modelError;
      final state = _formKey.currentState?.fields[field.name];
      if (state == null) continue;
      final error = field.validateValue(widget.form, state.value);
      if (error != null) result[field.name] = error;
      // This also includes retained custom errors from field.invalidate().
      if (state.errorText != null) result[field.name] = state.errorText!;
    }
    return Map.unmodifiable(result);
  }

  void _readFields() {
    final fields = <Field>[];
    final layout = <Object>[];
    final shape = <Object>[];
    for (final entry in widget.fields()) {
      if (entry is Field) {
        layout.add(entry);
        if (entry.isInput) {
          fields.add(entry);
          shape.add((entry.name, entry.runtimeType));
        } else {
          shape.add('widget');
        }
      } else if (entry is List) {
        if (entry.isEmpty ||
            entry.any((item) => item is! Field || !item.isInput)) {
          throw ArgumentError(
            'Rows must be non-empty lists of input Fields. '
            'Deeper nesting and embedded widgets in rows are unsupported.',
          );
        }
        final row = entry.cast<Field>().toList();
        layout.add(row);
        fields.addAll(row);
        shape.add('row-start');
        shape.addAll(row.map((field) => (field.name, field.runtimeType)));
        shape.add('row-end');
      } else {
        throw ArgumentError(
          'fields() accepts Fields and one-level lists of Fields. '
          'Use Field.widget(child: ...) for ordinary widgets.',
        );
      }
    }
    final inputNames = widget.form.inputs.map((input) => input.field).toList();
    final names = fields.map((field) => field.name).toList();
    if (inputNames.toSet().length != inputNames.length ||
        names.toSet().length != names.length) {
      throw ArgumentError('Form inputs and fields must have unique names.');
    }
    if (names.length != inputNames.length ||
        !names.toSet().containsAll(inputNames)) {
      throw ArgumentError('Provide exactly one Field for every form input.');
    }
    for (final field in fields) {
      field.inputFor(widget.form);
    }
    final previousShape = _layoutShape;
    if (previousShape != null &&
        (previousShape.length != shape.length ||
            !Iterable.generate(shape.length)
                .every((i) => previousShape[i] == shape[i]))) {
      throw ArgumentError(
        'Field names, types, and layout structure must stay fixed while mounted.',
      );
    }
    _layoutShape = shape;
    _layout = layout;
    _fields = fields;
    for (final field in fields.where(
      (field) =>
          field.hidden || (field.readOnly && !field.supportsReadOnlySelection),
    )) {
      final name = field.name;
      if (!(_formKey.currentState?.fields[name]?.effectiveFocusNode.hasFocus ??
          false)) {
        continue;
      }
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        final current = _fields
            .where((field) => field.name == name)
            .firstOrNull;
        if (current != null &&
            (current.hidden ||
                (current.readOnly && !current.supportsReadOnlySelection))) {
          _formKey.currentState?.fields[name]?.effectiveFocusNode.unfocus();
        }
      });
    }
  }

  void _claim(FormEntity form) {
    final owner = _owners[form];
    if (owner != null && owner != this) {
      throw StateError('A FormEntity can only have one mounted FormWidget.');
    }
    _owners[form] = this;
  }

  void _release(FormEntity form) {
    if (_owners[form] == this) _owners[form] = null;
  }

  @override
  void initState() {
    super.initState();
    _formKey = widget.form.formKey ?? GlobalKey<FormBuilderState>();
    _lastValues = Map.of(widget.form.values);
  }

  @override
  void didUpdateWidget(covariant FormWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.form, widget.form)) {
      _release(oldWidget.form);
      _formKey = widget.form.formKey ?? GlobalKey<FormBuilderState>();
      _lastValues = Map.of(widget.form.values);
      _isSubmitting = false;
      _submissionRevision++;
      _pendingChanges.clear();
      _fieldKeys.clear();
      _contentKeys.clear();
      _layoutShape = null;
      _needsDummyInitialization = true;
      _syncScheduled = false;
      _revision++;
      return;
    }
    final current = widget.form.values;
    final changes = <String, dynamic>{};
    for (final field in _fields) {
      if (_lastValues[field.name] != current[field.name]) {
        changes[field.name] = field.encode(current[field.name]);
      }
    }
    _lastValues = Map.of(current);
    _pendingChanges.addAll(changes);
    if (_pendingChanges.isNotEmpty && !_syncScheduled) {
      _syncScheduled = true;
      final revision = _revision;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || revision != _revision) return;
        _syncScheduled = false;
        _applyPendingChanges();
      });
    }
  }

  void _applyPendingChanges({String? editedField}) {
    // A newer user edit wins for that field; retain updates to other fields.
    _pendingChanges.remove(editedField);
    if (_pendingChanges.isEmpty) return;
    final changes = Map<String, dynamic>.of(_pendingChanges);
    _pendingChanges.clear();
    _syncing = true;
    try {
      _formKey.currentState?.patchValue(changes);
      for (final name in changes.keys) {
        final state = _formKey.currentState?.fields[name];
        if (state?.hasError ?? false) {
          state!.validate(focusOnInvalid: false);
        }
      }
    } finally {
      _syncing = false;
    }
  }

  void _requireRegisteredFields() {
    final registered = _formKey.currentState?.fields.keys.toSet();
    final names = _fields.map((field) => field.name).toSet();
    if (registered == null ||
        registered.length != names.length ||
        !registered.containsAll(names)) {
      throw StateError(
        'The layout must mount every generated field exactly once.',
      );
    }
  }

  Map<String, dynamic> _typedValues() {
    final values = Map<String, dynamic>.of(widget.form.values);
    final states = _formKey.currentState?.fields;
    for (final field in _fields) {
      if (field.hidden) continue;
      final state = states?[field.name];
      if (state == null) continue;
      try {
        values[field.name] = field.decode(state.value);
      } on FormatException {
        // Keep malformed numeric drafts in widget state, never in typed inputs.
      }
    }
    return values;
  }

  void _onChanged(String name) {
    if (_syncing) return;
    _requireRegisteredFields();
    _applyPendingChanges(editedField: name);
    widget.form.save(_typedValues());
    _lastValues = Map.of(widget.form.values);
    _readFields();
    setState(() {});
    final state = _formKey.currentState?.fields[name];
    if (state?.hasError ?? false) state!.validate(focusOnInvalid: false);
    widget.onChanged?.call(name, widget.form.values[name]);
  }

  /// Checks visible fields, including conversion errors. Hidden values are saved
  /// unchanged; direct model validation still checks every input.
  /// Works even when the wrapped form has no `formKey`.
  bool saveAndValidate() {
    final state = _formKey.currentState;
    if (state == null) throw StateError('The generated form is not mounted.');
    _requireRegisteredFields();
    _applyPendingChanges();
    widget.form.save(_typedValues());
    _lastValues = Map.of(widget.form.values);
    _readFields();
    setState(() {});
    state.save();
    final widgetsValid = _validateVisibleFields();
    final valid = widgetsValid && errors.isEmpty;
    if (!valid) widget.onFailure?.call(errors);
    return valid;
  }

  bool _validateVisibleFields() {
    var valid = true;
    FormBuilderFieldState? firstInvalid;
    for (final field in _fields) {
      if (field.hidden) continue;
      final state = _formKey.currentState!.fields[field.name]!;
      if (!state.validate(focusOnInvalid: false)) {
        valid = false;
        firstInvalid ??= state;
      }
    }
    firstInvalid?.focus();
    return valid;
  }

  Future<void> _submit() async {
    if (_isSubmitting || !widget.enabled || widget.onSubmit == null) return;
    if (!saveAndValidate()) return;
    final submissionRevision = ++_submissionRevision;
    final form = widget.form;
    final callback = widget.onSubmit!;
    final values = Map<String, dynamic>.unmodifiable(form.values);
    setState(() => _isSubmitting = true);
    try {
      await callback(values);
    } catch (error, stack) {
      FlutterError.reportError(
        FlutterErrorDetails(
          exception: error,
          stack: stack,
          library: 'form_builder_z',
          context: ErrorDescription('while submitting a generated form'),
        ),
      );
    } finally {
      if (mounted && submissionRevision == _submissionRevision) {
        setState(() => _isSubmitting = false);
      }
    }
  }

  @override
  void dispose() {
    _revision++;
    _submissionRevision++;
    _release(widget.form);
    super.dispose();
  }

  List<Widget> _spaced(
    List<Widget> children,
    double spacing, {
    bool horizontal = false,
  }) {
    final result = <Widget>[];
    for (final child in children) {
      if (result.isNotEmpty) {
        result.add(
          horizontal ? SizedBox(width: spacing) : SizedBox(height: spacing),
        );
      }
      result.add(child);
    }
    return result;
  }

  Widget _guardInteraction(Field field, Widget child) {
    final blocked = field.readOnly && !field.supportsReadOnlySelection;
    return Semantics(
      readOnly: field.readOnly,
      child: ExcludeFocus(
        excluding: blocked,
        child: IgnorePointer(ignoring: blocked, child: child),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _readFields();
    _claim(widget.form);
    if (_needsDummyInitialization) {
      final seeded = _dummyValues.apply(
        widget.form,
        _fields,
        isDebugMode: kDebugMode,
        enabled: widget.useDummyValues,
      );
      _needsDummyInitialization = false;
      if (seeded) {
        _lastValues = Map.of(widget.form.values);
        _readFields();
      }
    }
    final fields = <String, Widget>{
      for (final field in _fields)
        field.name: KeyedSubtree(
          key: _fieldKeys.putIfAbsent(field.name, () => GlobalKey()),
          child: _guardInteraction(
            field,
            field.buildField(
              context,
              form: widget.form,
              onChanged: (_) => _onChanged(field.name),
              validator: (value) => _fields
                  .firstWhere((current) => current.name == field.name)
                  .validateValue(widget.form, value),
              formEnabled: widget.enabled,
              autovalidateMode: widget.autovalidateMode,
            ),
          ),
        ),
    };
    final hidden = <Widget>[
      for (final field in _fields)
        if (field.hidden) fields[field.name]!,
    ];
    final children = <Widget>[];
    for (var index = 0; index < _layout.length; index++) {
      final entry = _layout[index];
      if (entry is Field) {
        final child = entry.isInput
            ? fields[entry.name]!
            : KeyedSubtree(
                key: _contentKeys.putIfAbsent(index, () => GlobalKey()),
                child: _guardInteraction(
                  entry,
                  entry.buildField(
                    context,
                    form: widget.form,
                    onChanged: (_) {},
                    formEnabled: widget.enabled,
                    autovalidateMode: widget.autovalidateMode,
                  ),
                ),
              );
        if (entry.hidden) {
          if (!entry.isInput) hidden.add(child);
        } else {
          children.add(child);
        }
      } else {
        final row = (entry as List<Field>)
            .where((field) => !field.hidden)
            .toList();
        if (row.isEmpty) continue;
        children.add(
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _spaced(
              [for (final field in row) Expanded(child: fields[field.name]!)],
              widget.crossAxisSpacing,
              horizontal: true,
            ),
          ),
        );
      }
    }
    final layout =
        widget.layoutBuilder?.call(context, List.unmodifiable(children)) ??
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: _spaced(children, widget.mainAxisSpacing),
        );
    final submit = widget.enabled && !_isSubmitting ? _submit : null;
    return KeyedSubtree(
      key: ObjectKey(widget.form),
      child: FormBuilder(
        key: _formKey,
        enabled: widget.enabled,
        autovalidateMode: widget.autovalidateMode,
        child: Padding(
          padding: widget.padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Hidden controls remain registered, without visible space or focus.
              Offstage(
                offstage: true,
                child: ExcludeFocus(
                  child: TickerMode(
                    enabled: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: hidden,
                    ),
                  ),
                ),
              ),
              ..._spaced([
                if (widget.header != null) widget.header!,
                layout,
                if (widget.onSubmit != null)
                  widget.submitButtonBuilder?.call(
                        context,
                        submit,
                        _isSubmitting,
                      ) ??
                      ElevatedButton(
                        onPressed: submit,
                        child: _isSubmitting
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : Text(widget.submitLabel),
                      ),
                if (widget.footer != null) widget.footer!,
              ], widget.mainAxisSpacing),
            ],
          ),
        ),
      ),
    );
  }
}
