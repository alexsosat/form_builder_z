part of 'field.dart';

class _PickerField<T> extends Field<T> {
  const _PickerField({
    required super.name,
    required this.options,
    required this.clearable,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
  }) : super._();

  final List<FormBuilderFieldOption<T>> options;
  final bool clearable;

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
    enabled: formEnabled && enabled && !readOnly && !hidden,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
    builder: (fieldState) {
      final state = fieldState as FormBuilderFieldState<FormBuilderField<T>, T>;
      final selected = options
          .where((option) => option.value == state.value)
          .firstOrNull;
      return InputDecorator(
        decoration: effectiveDecoration.copyWith(
          enabled: state.enabled,
          errorText: state.errorText,
        ),
        child: InkWell(
          onTap: state.enabled ? () => _select(state) : null,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child:
                      selected?.child ??
                      Text(
                        state.value?.toString() ?? 'Select ${label ?? name}',
                      ),
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      );
    },
  );

  Future<void> _select(
    FormBuilderFieldState<FormBuilderField<T>, T> state,
  ) async {
    final selection = await showModalBottomSheet<_PickerSelection<T>>(
      context: state.context,
      builder: (context) => SafeArea(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Column(
            children: [
              ListTile(
                title: Text(label ?? name),
                trailing: clearable
                    ? TextButton(
                        onPressed: () =>
                            Navigator.pop(context, _PickerSelection<T>(null)),
                        child: const Text('Clear'),
                      )
                    : null,
              ),
              Expanded(
                child: ListView(
                  children: [
                    for (final option in options)
                      ListTile(
                        title: option.child ?? Text(option.value.toString()),
                        selected: state.value == option.value,
                        onTap: () => Navigator.pop(
                          context,
                          _PickerSelection<T>(option.value),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    if (selection != null && state.mounted && state.enabled) {
      state.didChange(selection.value);
    }
  }
}

class _PickerSelection<T> {
  const _PickerSelection(this.value);
  final T? value;
}

class _SwitchField extends Field<bool> {
  const _SwitchField({
    required super.name,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
    required this.title,
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
  }) => FormBuilderSwitch(
    key: ValueKey(name),
    name: name,
    validator: validator ?? (value) => validateValue(form, value),
    onChanged: onChanged,
    decoration: effectiveDecoration,
    enabled: formEnabled && enabled && !readOnly,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
    initialValue: inputFor(form).value ?? false,
    title: title,
  );
}

class _CheckboxGroupField<T> extends Field<List<T>> {
  const _CheckboxGroupField({
    required super.name,
    required this.options,
    required this.orientation,
    required this.spacing,
    required this.runSpacing,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
  }) : super._();

  final List<FormBuilderFieldOption<T>> options;
  final OptionsOrientation orientation;
  final double spacing;
  final double runSpacing;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => FormBuilderCheckboxGroup<T>(
    key: ValueKey(name),
    name: name,
    initialValue: inputFor(form).value,
    validator: validator ?? (value) => validateValue(form, value),
    onChanged: onChanged,
    decoration: effectiveDecoration,
    enabled: formEnabled && enabled && !readOnly,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
    options: options,
    orientation: orientation,
    wrapSpacing: spacing,
    wrapRunSpacing: runSpacing,
  );
}

class _ChoiceChipsField<T> extends Field<T> {
  const _ChoiceChipsField({
    required super.name,
    required this.options,
    required this.spacing,
    required this.runSpacing,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
  }) : super._();

  final List<FormBuilderFieldOption<T>> options;
  final double spacing;
  final double runSpacing;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => FormBuilderChoiceChips<T>(
    key: ValueKey(name),
    name: name,
    initialValue: inputFor(form).value,
    validator: validator ?? (value) => validateValue(form, value),
    onChanged: onChanged,
    decoration: effectiveDecoration,
    enabled: formEnabled && enabled && !readOnly,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
    options: [
      for (final option in options)
        FormBuilderChipOption<T>(
          value: option.value,
          child: option.child ?? Text(option.value.toString()),
        ),
    ],
    spacing: spacing,
    runSpacing: runSpacing,
  );
}

class _RadioField<T> extends Field<T> {
  const _RadioField({
    required super.name,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
    required this.options,
    required this.orientation,
  }) : super._();

  final List<FormBuilderFieldOption<T>> options;
  final OptionsOrientation orientation;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => FormBuilderRadioGroup<T>(
    key: ValueKey(name),
    name: name,
    validator: validator ?? (value) => validateValue(form, value),
    onChanged: onChanged,
    decoration: effectiveDecoration,
    enabled: formEnabled && enabled && !readOnly,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
    initialValue: inputFor(form).value,
    options: options,
    orientation: orientation,
  );
}

class _ChipsField<T> extends Field<List<T>> {
  const _ChipsField({
    required super.name,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
    required this.options,
    required this.spacing,
    required this.runSpacing,
  }) : super._();

  final List<FormBuilderFieldOption<T>> options;
  final double spacing;
  final double runSpacing;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) => FormBuilderFilterChips<T>(
    key: ValueKey(name),
    name: name,
    validator: validator ?? (value) => validateValue(form, value),
    onChanged: onChanged,
    decoration: effectiveDecoration,
    enabled: formEnabled && enabled && !readOnly,
    autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
    initialValue: inputFor(form).value,
    options: [
      for (final option in options)
        FormBuilderChipOption<T>(
          value: option.value,
          child: option.child ?? Text(option.value.toString()),
        ),
    ],
    spacing: spacing,
    runSpacing: runSpacing,
  );
}

class _SliderField extends Field<double> {
  _SliderField({
    required super.name,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
    required this.min,
    required this.max,
    this.divisions,
  }) : super._() {
    _checkSliderBounds(min, max, divisions);
  }

  final double min;
  final double max;
  final int? divisions;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) {
    final value = inputFor(form).value ?? min;
    if (!value.isFinite || value < min || value > max) {
      throw ArgumentError(
        'Slider "$name" value must be finite and within [$min, $max].',
      );
    }
    return FormBuilderSlider(
      key: ValueKey(name),
      name: name,
      validator: validator ?? (value) => validateValue(form, value),
      onChanged: onChanged,
      decoration: effectiveDecoration,
      enabled: formEnabled && enabled && !readOnly,
      autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
      initialValue: value,
      min: min,
      max: max,
      divisions: divisions,
    );
  }
}

class _RangeSliderField extends Field<RangeValues> {
  _RangeSliderField({
    required super.name,
    super.label,
    super.decoration,
    super.enabled,
    super.hidden,
    super.readOnly,
    super.dummyValue,
    required this.min,
    required this.max,
    this.divisions,
  }) : super._() {
    _checkSliderBounds(min, max, divisions);
  }

  final double min;
  final double max;
  final int? divisions;

  @override
  Widget buildField(
    BuildContext context, {
    required FormEntity form,
    required ValueChanged<Object?> onChanged,
    required bool formEnabled,
    required AutovalidateMode autovalidateMode,
    String? Function(Object?)? validator,
  }) {
    final value = inputFor(form).value ?? RangeValues(min, max);
    if (!value.start.isFinite ||
        !value.end.isFinite ||
        value.start < min ||
        value.end > max ||
        value.start > value.end) {
      throw ArgumentError(
        'Range slider "$name" value must be ordered and within [$min, $max].',
      );
    }
    return FormBuilderRangeSlider(
      key: ValueKey(name),
      name: name,
      validator: validator ?? (value) => validateValue(form, value),
      onChanged: onChanged,
      decoration: effectiveDecoration,
      enabled: formEnabled && enabled && !readOnly,
      autovalidateMode: hidden ? AutovalidateMode.disabled : autovalidateMode,
      initialValue: value,
      min: min,
      max: max,
      divisions: divisions,
    );
  }
}

void _checkSliderBounds(double min, double max, int? divisions) {
  if (!min.isFinite || !max.isFinite || min > max) {
    throw ArgumentError('Slider bounds must be finite and min <= max.');
  }
  if (divisions != null && divisions <= 0) {
    throw ArgumentError.value(divisions, 'divisions', 'Must be > 0');
  }
}
