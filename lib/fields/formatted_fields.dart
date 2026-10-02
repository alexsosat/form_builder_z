part of 'field.dart';

class _CurrencyField extends _NumberField {
  _CurrencyField({
    required super.name,
    required this.formatter,
    required this.showCalculator,
    this.locale,
    super.label,
    InputDecoration decoration = const InputDecoration(),
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
    List<TextInputFormatter>? inputFormatters,
  }) : super(
          decoration: decoration.prefixText == null && decoration.prefix == null
              ? decoration.copyWith(prefixText: '${formatter.currencySymbol} ')
              : decoration,
          inputFormatters: List.unmodifiable(inputFormatters ?? [formatter]),
        );

  final CurrencyTextInputFormatter formatter;
  final bool showCalculator;
  final String? locale;

  @override
  double? decode(Object? value) => formatter.parseAmount(value as String?);

  @override
  String? encode(Object? value) =>
      value == null ? null : formatter.formatAmount(value as double);

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) =>
      _CurrencyFieldControl(
        field: this,
        form: form,
        onChanged: onChanged,
        enabled: formEnabled && enabled,
        autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
        validator: validator,
      );
}

/// Preserves the registered text field when the input mode changes.
class _CurrencyFieldControl extends StatefulWidget {
  const _CurrencyFieldControl({
    required this.field,
    required this.form,
    required this.onChanged,
    required this.enabled,
    required this.autovalidateMode,
    this.validator,
  });

  final _CurrencyField field;
  final FormEntity form;
  final ValueChanged<Object?> onChanged;
  final bool enabled;
  final AutovalidateMode autovalidateMode;
  final String? Function(Object?)? validator;

  @override
  State<_CurrencyFieldControl> createState() => _CurrencyFieldControlState();
}

class _CurrencyFieldControlState extends State<_CurrencyFieldControl> {
  _CurrencyCalculatorSession? _session;

  FormBuilderFieldState? get _fieldState =>
      FormBuilder.of(context)?.fields[widget.field.name];

  bool get _calculatorAvailable =>
      widget.field.showCalculator &&
      widget.enabled &&
      !widget.field.hidden &&
      !widget.field.readOnly;

  @override
  void didUpdateWidget(covariant _CurrencyFieldControl oldWidget) {
    super.didUpdateWidget(oldWidget);
    final session = _session;
    if (session != null &&
        (!_calculatorAvailable ||
            !identical(session.form, widget.form) ||
            session.modelValue != widget.field.inputFor(widget.form).value ||
            oldWidget.field.locale != widget.field.locale ||
            oldWidget.field.formatter.fractionDigits !=
                widget.field.formatter.fractionDigits ||
            oldWidget.field.formatter.currencySymbol !=
                widget.field.formatter.currencySymbol)) {
      _cancelSession();
    }
  }

  void _cancelSession() {
    final session = _session;
    if (session == null) return;
    _session = null;
    // Rebuilds and disposal may happen while Navigator is locked.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (session.navigator.mounted && session.route.isActive) {
        session.navigator.removeRoute(session.route);
      }
    });
  }

  Future<void> _openCalculator() async {
    if (!_calculatorAvailable || _session != null) return;
    final state = _fieldState;
    if (state == null) return;
    final field = widget.field;
    final modelValue = field.inputFor(widget.form).value;
    double? initialValue;
    try {
      initialValue = field.decode(state.value);
    } on FormatException {
      initialValue = modelValue;
    }
    FocusManager.instance.primaryFocus?.unfocus();
    final navigator = Navigator.of(context);
    final route = ModalBottomSheetRoute<_CurrencyCalculatorResult>(
      isScrollControlled: true,
      useSafeArea: true,
      capturedThemes:
          InheritedTheme.capture(from: context, to: navigator.context),
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      builder: (_) => _CurrencyCalculatorSheet(
        label: field.label ?? field.decoration.labelText ?? field.name,
        initialValue: initialValue,
        locale: field.locale ?? Intl.getCurrentLocale(),
        fractionDigits: field.formatter.fractionDigits,
      ),
    );
    final session = _CurrencyCalculatorSession(
      navigator: navigator,
      route: route,
      form: widget.form,
      modelValue: modelValue,
      draft: state.value,
    );
    _session = session;
    final result = await navigator.push(route);
    if (!identical(_session, session)) return;
    _session = null;
    if (result == null ||
        !mounted ||
        !_calculatorAvailable ||
        !identical(session.form, widget.form) ||
        session.modelValue != widget.field.inputFor(widget.form).value ||
        session.draft != _fieldState?.value) {
      return;
    }
    // The same format/parse path establishes the saved currency precision.
    final text = widget.field.encode(result.value);
    if ((_fieldState?.value ?? '') != (text ?? '')) {
      _fieldState?.didChange(text);
    }
  }

  @override
  void dispose() {
    _cancelSession();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final field = widget.field;
    return FormBuilderTextField(
      key: ValueKey(field.name),
      name: field.name,
      initialValue: field.encode(field.inputFor(widget.form).value),
      validator: widget.validator ??
          (value) => field.validateValue(widget.form, value),
      valueTransformer: (value) {
        try {
          return field.decode(value);
        } on FormatException {
          return field.inputFor(widget.form).value;
        }
      },
      onChanged: (value) {
        _cancelSession();
        widget.onChanged(value);
      },
      decoration: field.effectiveDecoration,
      enabled: widget.enabled,
      readOnly: field.readOnly || field.showCalculator,
      autovalidateMode: widget.autovalidateMode,
      keyboardType:
          field.showCalculator ? TextInputType.none : field.keyboardType,
      inputFormatters: field.inputFormatters,
      onTap: field.showCalculator ? _openCalculator : null,
      onTapAlwaysCalled: field.showCalculator,
    );
  }
}

class _CurrencyCalculatorSession {
  const _CurrencyCalculatorSession({
    required this.navigator,
    required this.route,
    required this.form,
    required this.modelValue,
    required this.draft,
  });

  final NavigatorState navigator;
  final ModalBottomSheetRoute<_CurrencyCalculatorResult> route;
  final FormEntity form;
  final double? modelValue;
  final String? draft;
}

/// A wrapper distinguishes accepting null from dismissing without a result.
class _CurrencyCalculatorResult {
  const _CurrencyCalculatorResult(this.value);
  final double? value;
}

class _CurrencyCalculatorSheet extends StatefulWidget {
  const _CurrencyCalculatorSheet({
    required this.label,
    required this.initialValue,
    required this.locale,
    required this.fractionDigits,
  });

  final String label;
  final double? initialValue;
  final String locale;
  final int fractionDigits;

  @override
  State<_CurrencyCalculatorSheet> createState() =>
      _CurrencyCalculatorSheetState();
}

class _CurrencyCalculatorSheetState extends State<_CurrencyCalculatorSheet> {
  late final CalcController _controller;
  final _focusNode = FocusNode();
  late bool _empty;
  bool _needsEvaluation = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    final format = NumberFormat.decimalPattern(widget.locale)
      ..maximumFractionDigits =
          widget.fractionDigits > 6 ? widget.fractionDigits : 6;
    _controller = CalcController.numberFormat(format, 10);
    _empty = widget.initialValue == null;
  }

  void _changed(String? key, double? value, String? expression) {
    setState(() {
      _empty = false;
      _needsEvaluation = key != '=';
      _error = null;
    });
  }

  void _clear() {
    _controller.allClear();
    setState(() {
      _empty = true;
      _needsEvaluation = false;
      _error = null;
    });
  }

  void _done() {
    if (_empty) {
      Navigator.pop(context, const _CurrencyCalculatorResult(null));
      return;
    }
    if (_needsEvaluation) {
      if (_controller.expression?.contains('?') ?? false) {
        setState(() => _error = 'Complete the calculation');
        return;
      }
      _controller.operate();
      _needsEvaluation = false;
    }
    final value = _controller.value;
    if (value == null || !value.isFinite) {
      setState(() => _error = 'Enter a valid amount');
      return;
    }
    Navigator.pop(context, _CurrencyCalculatorResult(value));
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 0.6;
    return SafeArea(
      top: false,
      child: SizedBox(
        height: height > 500 ? 500 : height,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(children: [
              Expanded(
                child: Text(widget.label,
                    style: Theme.of(context).textTheme.titleMedium),
              ),
              TextButton(onPressed: _clear, child: const Text('Clear')),
              TextButton(onPressed: _done, child: const Text('Done')),
            ]),
          ),
          if (_error != null)
            Text(_error!,
                style: TextStyle(color: Theme.of(context).colorScheme.error)),
          Expanded(
            child: SimpleCalculator(
              controller: _controller,
              focusNode: _focusNode,
              value: widget.initialValue ?? 0,
              autofocus: true,
              hideSurroundingBorder: true,
              onChanged: _changed,
            ),
          ),
        ]),
      ),
    );
  }
}

class _MaskField extends _TextField {
  _MaskField({
    required super.name,
    required String mask,
    required String match,
    required this.maskReturnValue,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
    super.keyboardType,
    super.textInputAction,
    List<TextInputFormatter>? inputFormatters,
  })  : _mask =
            MaskTextInputFormatter(mask: mask, filter: {'#': RegExp(match)}),
        super(
          inputFormatters: List.unmodifiable(inputFormatters ??
              [FormInputFormatters.mask(mask: mask, match: match)]),
        ) {
    if (mask.isEmpty || !mask.contains('#')) {
      throw ArgumentError.value(mask, 'mask', 'Must contain a # placeholder');
    }
  }

  final MaskTextInputFormatter _mask;
  final bool maskReturnValue;

  @override
  String? decode(Object? value) {
    final text = value as String?;
    if (text == null) return null;
    return maskReturnValue ? text : _mask.unmaskText(text);
  }

  @override
  String? encode(Object? value) =>
      value == null ? null : _mask.maskText(value as String);
}
