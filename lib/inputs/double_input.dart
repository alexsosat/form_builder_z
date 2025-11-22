import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input field for providing an amount
class DoubleInput extends InputEntity<double?> {
  const DoubleInput.pure({
    required super.field,
  }) : super.pure(value: null);

  const DoubleInput.dirty({
    required super.field,
    required super.value,
    super.validators = const [],
  }) : super.dirty();

  @override
  DoubleInput dirty({
    double? value,
    List<BaseValidator<double?>>? validators,
  }) =>
      DoubleInput.dirty(
        field: field,
        value: value,
        validators: validators ??
            const [
              NumericValidator(),
            ],
      );
}
