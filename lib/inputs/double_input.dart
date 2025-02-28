import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input field for providing an amount
class DoubleInput extends InputEntity<double?> {
  const DoubleInput.pure({
    required super.field,
    required this.allowNegative,
    required this.allowZero,
    this.maxValue = 0,
    this.isRequired = true,
  }) : super.pure(value: null);

  const DoubleInput.dirty({
    required super.field,
    required super.value,
    required this.allowNegative,
    required this.allowZero,
    this.maxValue = 0,
    this.isRequired = true,
  }) : super.dirty();

  /// True if the input is required
  final bool isRequired;

  /// True if the input should allow negative values
  final bool allowNegative;

  /// True if the input should allow zero
  final bool allowZero;

  /// maximum value allowed
  final double maxValue;

  // Override validator to handle validating a given input value.
  @override
  String? validator(double? value) => FormBuilderValidators.compose<double>(
        [
          if (isRequired) FormBuilderValidators.required(),
          FormBuilderValidators.numeric(
            checkNullOrEmpty: false,
          ),
          if (!allowNegative)
            FormBuilderValidators.min(
              0,
              checkNullOrEmpty: false,
            ),
          if (!allowZero)
            FormBuilderValidators.notEqual(
              0,
              checkNullOrEmpty: false,
            ),
          if (maxValue > 0)
            FormBuilderValidators.max(
              maxValue,
              checkNullOrEmpty: false,
            ),
        ],
      ).call(value);

  @override
  DoubleInput dirty({
    double? value,
    bool? allowNegative,
    bool? allowZero,
    double? maxValue,
    bool? isRequired,
  }) =>
      DoubleInput.dirty(
        field: field,
        value: value,
        maxValue: maxValue ?? this.maxValue,
        isRequired: isRequired ?? this.isRequired,
        allowNegative: allowNegative ?? this.allowNegative,
        allowZero: allowZero ?? this.allowZero,
      );
}
