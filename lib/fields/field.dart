import 'package:material_ui/material_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../formatters/form_input_formatters.dart';
import '../models/form_entity.dart';
import '../models/input_entity.dart';

part 'formatted_fields.dart';
part 'selection_fields.dart';

/// Presentation for an existing input. Values and validators belong to the form.
sealed class Field<T> {
  const Field._({
    required this.name,
    this.label,
    this.decoration = const InputDecoration(),
    this.enabled = true,
    this.hidden = false,
    this.readOnly = false,
    this.dummyValue,
  });

  /// Text presentation. Validation is supplied by the existing model input.
  static Field<String> text(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    String? dummyValue,
    int? maxLines = 1,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    List<TextInputFormatter> inputFormatters = const [],
    TextCapitalization textCapitalization = TextCapitalization.none,
  }) => _TextField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    maxLines: maxLines,
    keyboardType: keyboardType,
    inputFormatters: List.unmodifiable(inputFormatters),
    textCapitalization: textCapitalization,
    textInputAction: textInputAction,
  );

  static Field<String> email(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    String? dummyValue,
    TextInputAction? textInputAction,
    List<TextInputFormatter> inputFormatters = const [],
  }) => _TextField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    keyboardType: TextInputType.emailAddress,
    inputFormatters: List.unmodifiable(inputFormatters),
    textInputAction: textInputAction,
  );

  /// Set viewable to add a show/hide button that replaces decoration.suffixIcon.
  static Field<String> password(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    bool viewable = false,
    String? dummyValue,
    TextInputAction? textInputAction,
    List<TextInputFormatter> inputFormatters = const [],
  }) => _TextField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    obscureText: true,
    viewable: viewable,
    inputFormatters: List.unmodifiable(inputFormatters),
    textInputAction: textInputAction,
  );

  static Field<String> textArea(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    String? dummyValue,
    int? maxLines = 4,
    List<TextInputFormatter> inputFormatters = const [],
    TextCapitalization textCapitalization = TextCapitalization.none,
  }) => _TextField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    maxLines: maxLines,
    inputFormatters: List.unmodifiable(inputFormatters),
    textCapitalization: textCapitalization,
    keyboardType: TextInputType.multiline,
  );

  static Field<double> number(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    double? dummyValue,
    String parseErrorText = 'Enter a valid number',
    List<TextInputFormatter> inputFormatters = const [],
    TextInputType keyboardType = const TextInputType.numberWithOptions(
      decimal: true,
      signed: true,
    ),
  }) => _NumberField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    parseErrorText: parseErrorText,
    inputFormatters: List.unmodifiable(inputFormatters),
    keyboardType: keyboardType,
  );

  static Field<bool> checkbox(
    String name, {
    String? label,
    Widget? title,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    bool? dummyValue,
  }) => _CheckboxField(
    name: name,
    label: label,
    title: title ?? Text(label ?? name),
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
  );

  static Field<DateTime> date(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    DateTime? dummyValue,
    DateTime? firstDate,
    DateTime? lastDate,
  }) => _DateTimeField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    inputType: InputType.date,
    firstDate: firstDate,
    lastDate: lastDate,
  );

  static Field<DateTime> datetime(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    DateTime? dummyValue,
    DateTime? firstDate,
    DateTime? lastDate,
  }) => _DateTimeField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    firstDate: firstDate,
    lastDate: lastDate,
  );

  static Field<DateTimeRange> dateRange(
    String name, {
    required DateTime firstDate,
    required DateTime lastDate,
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    DateTimeRange? dummyValue,
  }) => _DateRangeField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    firstDate: firstDate,
    lastDate: lastDate,
  );

  static Field<V> dropdown<V>(
    String name, {
    required List<DropdownMenuItem<V>> items,
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    V? dummyValue,
  }) => _DropdownField<V>(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    items: List.unmodifiable(items),
  );

  /// The control must call state.didChange(value) and respect state.enabled.
  static Field<V> builder<V>(
    String name, {
    required Widget Function(
      BuildContext context,
      FormBuilderFieldState<FormBuilderField<V>, V> state,
    )
    builder,
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    V? dummyValue,
  }) => _CustomField<V>(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    builder: builder,
  );

  static Field<String> capitalizeWords(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    String? dummyValue,
    TextInputAction? textInputAction,
    List<TextInputFormatter>? inputFormatters,
  }) => _TextField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    keyboardType: TextInputType.text,
    textCapitalization: TextCapitalization.words,
    textInputAction: textInputAction,
    inputFormatters: List.unmodifiable(
      inputFormatters ?? const <TextInputFormatter>[],
    ),
  );

  static Field<String> capitalizeSentences(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    String? dummyValue,
    TextInputAction? textInputAction,
    List<TextInputFormatter>? inputFormatters,
  }) => _TextField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    keyboardType: TextInputType.text,
    textCapitalization: TextCapitalization.sentences,
    textInputAction: textInputAction,
    inputFormatters: List.unmodifiable(
      inputFormatters ?? const <TextInputFormatter>[],
    ),
  );

  static Field<String> url(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    String? dummyValue,
    TextInputAction? textInputAction,
    List<TextInputFormatter>? inputFormatters,
  }) => _TextField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    keyboardType: TextInputType.url,
    textCapitalization: TextCapitalization.none,
    textInputAction: textInputAction,
    inputFormatters: List.unmodifiable(
      inputFormatters ?? [FormInputFormatters.url()],
    ),
  );

  static Field<String> phoneNumber(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    String? dummyValue,
    String? defaultCountryCode,
    TextInputAction? textInputAction,
    List<TextInputFormatter>? inputFormatters,
  }) => _TextField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    keyboardType: TextInputType.phone,
    textCapitalization: TextCapitalization.none,
    textInputAction: textInputAction,
    inputFormatters: List.unmodifiable(
      inputFormatters ??
          [
            FormInputFormatters.phoneNumber(
              defaultCountryCode: defaultCountryCode,
            ),
          ],
    ),
  );

  /// A formatted currency control backed by a double amount.
  /// With showCalculator, edits stay in a calculator sheet until Done is pressed.
  static Field<double> currency(
    String name, {
    required String currency,
    String? locale,
    int? decimalDigits,
    bool showCalculator = false,
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    double? dummyValue,
    List<TextInputFormatter>? inputFormatters,
  }) {
    final formatter = FormInputFormatters.currency(
      currency: currency,
      locale: locale,
      decimalDigits: decimalDigits,
    );
    return _CurrencyField(
      name: name,
      label: label,
      decoration: decoration,
      enabled: enabled,
      hidden: hidden,
      readOnly: readOnly,
      dummyValue: dummyValue,
      formatter: formatter,
      showCalculator: showCalculator,
      locale: locale,
      inputFormatters: inputFormatters,
    );
  }

  /// Stores raw mask characters unless maskReturnValue is true.
  static Field<String> mask(
    String name, {
    required String mask,
    String match = r'[\w\d]',
    bool maskReturnValue = false,
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    String? dummyValue,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    List<TextInputFormatter>? inputFormatters,
  }) => _MaskField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    mask: mask,
    match: match,
    maskReturnValue: maskReturnValue,
    keyboardType: keyboardType,
    textInputAction: textInputAction,
    inputFormatters: inputFormatters,
  );

  static Field<V> picker<V>(
    String name, {
    required List<FormBuilderFieldOption<V>> options,
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    V? dummyValue,
    bool clearable = true,
  }) => _PickerField<V>(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    options: List.unmodifiable(options),
    clearable: clearable,
  );

  /// Multiple selection using a native checkbox group.
  static Field<List<V>> checkboxGroup<V>(
    String name, {
    required List<FormBuilderFieldOption<V>> options,
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    List<V>? dummyValue,
    OptionsOrientation orientation = OptionsOrientation.wrap,
    double spacing = 8,
    double runSpacing = 8,
  }) => _CheckboxGroupField<V>(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    options: List.unmodifiable(options),
    orientation: orientation,
    spacing: spacing,
    runSpacing: runSpacing,
  );

  /// Single selection using choice chips; deselecting saves null.
  static Field<V> choiceChips<V>(
    String name, {
    required List<FormBuilderFieldOption<V>> options,
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    V? dummyValue,
    double spacing = 8,
    double runSpacing = 8,
  }) => _ChoiceChipsField<V>(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    options: List.unmodifiable(options),
    spacing: spacing,
    runSpacing: runSpacing,
  );

  static Field<V> radio<V>(
    String name, {
    required List<FormBuilderFieldOption<V>> options,
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    V? dummyValue,
    OptionsOrientation orientation = OptionsOrientation.wrap,
  }) => _RadioField<V>(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    options: List.unmodifiable(options),
    orientation: orientation,
  );

  /// Multiple selection, matching Nylo's chips field.
  static Field<List<V>> chips<V>(
    String name, {
    required List<FormBuilderFieldOption<V>> options,
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    List<V>? dummyValue,
    double spacing = 8,
    double runSpacing = 8,
  }) => _ChipsField<V>(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    options: List.unmodifiable(options),
    spacing: spacing,
    runSpacing: runSpacing,
  );

  static Field<bool> switchBox(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    bool? dummyValue,
    Widget? title,
  }) => _SwitchField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    title: title ?? Text(label ?? name),
  );

  static Field<double> slider(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    double? dummyValue,
    double min = 0,
    double max = 1,
    int? divisions,
  }) => _SliderField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    min: min,
    max: max,
    divisions: divisions,
  );

  static Field<RangeValues> rangeSlider(
    String name, {
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    RangeValues? dummyValue,
    double min = 0,
    double max = 1,
    int? divisions,
  }) => _RangeSliderField(
    name: name,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
    min: min,
    max: max,
    divisions: divisions,
  );

  /// Alias for builder: a custom control receives its registered field state.
  static Field<V> custom<V>(
    String name, {
    required Widget Function(
      BuildContext context,
      FormBuilderFieldState<FormBuilderField<V>, V> state,
    )
    builder,
    String? label,
    InputDecoration decoration = const InputDecoration(),
    bool enabled = true,
    bool hidden = false,
    bool readOnly = false,
    V? dummyValue,
  }) => Field.builder<V>(
    name,
    builder: builder,
    label: label,
    decoration: decoration,
    enabled: enabled,
    hidden: hidden,
    readOnly: readOnly,
    dummyValue: dummyValue,
  );

  /// Embed content without adding a model input or a submitted value.
  static Field<Never> widget({
    required Widget child,
    bool hidden = false,
    bool readOnly = false,
  }) => _WidgetField(child, hidden: hidden, readOnly: readOnly);

  final String name;
  final String? label;

  /// Ordinary content has no input, saved value, or validator.
  bool get isInput => true;

  InputDecoration get effectiveDecoration =>
      decoration.copyWith(labelText: label ?? decoration.labelText ?? name);
  final InputDecoration decoration;
  final bool enabled;

  /// Keeps state and values while excluding this field from layout and validation.
  final bool hidden;

  /// Prevents user edits while retaining values and validation.
  final bool readOnly;

  /// Debug-only autofill for pure, empty inputs. Null means no dummy value.
  /// Used once per form instance when FormWidget.useDummyValues is enabled.
  final T? dummyValue;

  /// Text controls use native read-only behavior to allow selection and copying.
  bool get supportsReadOnlySelection => false;

  /// Resolves the current input, including replacements made by `form.save()`.
  InputEntity<T?> inputFor(FormEntity form) {
    final matches = form.inputs.where((input) => input.field == name).toList();
    if (matches.length != 1) {
      throw ArgumentError('Field "$name" must match exactly one form input.');
    }
    final input = matches.single;
    if (input is! InputEntity<T?>) {
      throw ArgumentError(
        'Field "$name" requires an InputEntity<$T?>, '
        'but received ${input.runtimeType}.',
      );
    }
    return input;
  }

  /// Converts widget values to model values.
  T? decode(Object? value) => value as T?;

  /// Checks conversion and current model validators against a widget draft.
  String? validateValue(FormEntity form, Object? value) {
    if (hidden) return null;
    try {
      return inputFor(form).validator(decode(value));
    } on FormatException catch (error) {
      return error.message;
    }
  }

  /// Converts model values to widget values.
  Object? encode(Object? value) => value;

  /// Used by the generated form; applications usually only declare definitions.
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  });
}

class _TextField extends Field<String> {
  const _TextField({
    required super.name,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
    this.obscureText = false,
    this.viewable = false,
    this.inputFormatters = const [],
    this.textCapitalization = TextCapitalization.none,
    this.maxLines = 1,
    this.keyboardType,
    this.textInputAction,
  }) : assert(!obscureText || maxLines == 1),
       super._();

  final bool obscureText;
  final bool viewable;
  final List<TextInputFormatter> inputFormatters;
  final TextCapitalization textCapitalization;
  final int? maxLines;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  @override
  bool get supportsReadOnlySelection => true;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => _TextFieldControl(
    field: this,
    form: form,
    onChanged: onChanged,
    enabled: formEnabled && enabled,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
    validator: validator,
  );
}

/// Keeps the registered text control stable as password visibility changes.
class _TextFieldControl extends StatefulWidget {
  const _TextFieldControl({
    required this.field,
    required this.form,
    required this.onChanged,
    required this.enabled,
    required this.autovalidateMode,
    this.validator,
  });

  final _TextField field;
  final FormEntity form;
  final ValueChanged<Object?> onChanged;
  final bool enabled;
  final AutovalidateMode autovalidateMode;
  final String? Function(Object?)? validator;

  @override
  State<_TextFieldControl> createState() => _TextFieldControlState();
}

class _TextFieldControlState extends State<_TextFieldControl> {
  bool _revealed = false;

  @override
  void didUpdateWidget(covariant _TextFieldControl oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.field.obscureText || !widget.field.viewable) _revealed = false;
  }

  @override
  Widget build(BuildContext context) {
    final field = widget.field;
    final viewable = field.obscureText && field.viewable;
    final decoration = viewable
        ? field.effectiveDecoration.copyWith(
            suffixIcon: IconButton(
              tooltip: _revealed ? 'Hide password' : 'Show password',
              onPressed: widget.enabled
                  ? () => setState(() => _revealed = !_revealed)
                  : null,
              icon: Icon(_revealed ? Icons.visibility_off : Icons.visibility),
            ),
          )
        : field.effectiveDecoration;
    return FormBuilderTextField(
      key: ValueKey(field.name),
      name: field.name,
      initialValue: field.encode(field.inputFor(widget.form).value) as String?,
      validator:
          widget.validator ??
          (value) => field.validateValue(widget.form, value),
      onChanged: widget.onChanged,
      valueTransformer: field.decode,
      decoration: decoration,
      enabled: widget.enabled,
      readOnly: field.readOnly,
      autovalidateMode: widget.autovalidateMode,
      obscureText: field.obscureText && !_revealed,
      maxLines: field.maxLines,
      keyboardType: field.keyboardType,
      inputFormatters: field.inputFormatters,
      textCapitalization: field.textCapitalization,
      textInputAction: field.textInputAction,
    );
  }
}

/// A double-valued input rendered as text, retaining malformed drafts locally.
class _NumberField extends Field<double> {
  const _NumberField({
    required super.name,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
    this.parseErrorText = 'Enter a valid number',
    this.inputFormatters = const [],
    this.keyboardType = const TextInputType.numberWithOptions(
      decimal: true,
      signed: true,
    ),
  }) : super._();

  final String parseErrorText;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType keyboardType;

  @override
  double? decode(Object? value) {
    final text = (value as String?)?.trim();
    if (text == null || text.isEmpty) return null;
    final number = double.tryParse(text);
    if (number == null) throw FormatException(parseErrorText);
    return number;
  }

  @override
  String? encode(Object? value) => (value as double?)?.toString();

  @override
  bool get supportsReadOnlySelection => true;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => FormBuilderTextField(
    key: ValueKey(name),
    name: name,
    initialValue: encode(inputFor(form).value),
    validator: validator ?? (value) => validateValue(form, value),
    valueTransformer: (value) {
      try {
        return decode(value);
      } on FormatException {
        return inputFor(form).value;
      }
    },
    onChanged: onChanged,
    decoration: effectiveDecoration,
    enabled: formEnabled && enabled,
    readOnly: readOnly,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
    keyboardType: keyboardType,
    inputFormatters: inputFormatters,
  );
}

class _CheckboxField extends Field<bool> {
  const _CheckboxField({
    required super.name,
    required this.title,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
  }) : super._();

  final Widget title;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => FormBuilderCheckbox(
    key: ValueKey(name),
    name: name,
    title: title,
    initialValue: inputFor(form).value ?? false,
    validator: validator ?? (value) => validateValue(form, value),
    onChanged: onChanged,
    decoration: decoration,
    enabled: formEnabled && enabled,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
  );
}

class _DateTimeField extends Field<DateTime> {
  const _DateTimeField({
    required super.name,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
    this.inputType = InputType.both,
    this.firstDate,
    this.lastDate,
  }) : super._();

  final InputType inputType;
  final DateTime? firstDate;
  final DateTime? lastDate;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => FormBuilderDateTimePicker(
    key: ValueKey(name),
    name: name,
    initialValue: inputFor(form).value,
    validator: validator ?? (value) => validateValue(form, value),
    onChanged: onChanged,
    decoration: effectiveDecoration,
    enabled: formEnabled && enabled,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
    inputType: inputType,
    firstDate: firstDate,
    lastDate: lastDate,
  );
}

class _DateRangeField extends Field<DateTimeRange> {
  const _DateRangeField({
    required super.name,
    required this.firstDate,
    required this.lastDate,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
  }) : super._();

  final DateTime firstDate;
  final DateTime lastDate;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => FormBuilderDateRangePicker(
    key: ValueKey(name),
    name: name,
    initialValue: inputFor(form).value,
    validator: validator ?? (value) => validateValue(form, value),
    onChanged: onChanged,
    decoration: effectiveDecoration,
    enabled: formEnabled && enabled,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
    firstDate: firstDate,
    lastDate: lastDate,
  );
}

class _DropdownField<T> extends Field<T> {
  const _DropdownField({
    required super.name,
    required this.items,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
  }) : super._();

  final List<DropdownMenuItem<T>> items;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => FormBuilderDropdown<T>(
    key: ValueKey(name),
    name: name,
    items: items,
    initialValue: inputFor(form).value,
    validator: validator ?? (value) => validateValue(form, value),
    onChanged: onChanged,
    decoration: effectiveDecoration,
    enabled: formEnabled && enabled,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
  );
}

/// Build a control using `state.didChange(value)` and respect `state.enabled`.
/// The generated InputDecorator displays validation errors automatically.
class _CustomField<T> extends Field<T> {
  const _CustomField({
    required super.name,
    required this.builder,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
  }) : super._();

  final Widget Function(
    BuildContext context,
    FormBuilderFieldState<FormBuilderField<T>, T> state,
  )
  builder;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => FormBuilderField<T>(
    key: ValueKey(name),
    name: name,
    initialValue: inputFor(form).value,
    validator: validator ?? (value) => validateValue(form, value),
    onChanged: onChanged,
    enabled: formEnabled && enabled && !readOnly,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
    builder: (state) => InputDecorator(
      decoration: effectiveDecoration.copyWith(
        enabled: state.widget.enabled,
        errorText: state.errorText,
      ),
      child: builder(
        context,
        state as FormBuilderFieldState<FormBuilderField<T>, T>,
      ),
    ),
  );
}

class _WidgetField extends Field<Never> {
  const _WidgetField(this.child, {super.hidden, super.readOnly})
    : super._(name: '');

  final Widget child;

  @override
  bool get isInput => false;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => child;
}
