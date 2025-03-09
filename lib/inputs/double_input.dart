import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input field for providing an amount
class DoubleInput extends InputEntity<double?> {
  const DoubleInput.pure({
    required super.field,
    super.validators,
  }) : super.pure(value: null);

  const DoubleInput.dirty({
    required super.field,
    required super.value,
    super.validators,
  }) : super.dirty();

  // Override validator to handle validating a given input value.
  @override
  String? validator(double? value) {
    validators.add(const NumericValidator());

    return super.validator(value);
  }

  @override
  DoubleInput dirty({
    double? value,
    List<TranslatedValidator<double>>? validators,
  }) =>
      DoubleInput.dirty(
        field: field,
        value: value,
        validators: validators ?? this.validators,
      );
}
