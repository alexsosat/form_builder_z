import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input that handles a boolean (checkbox) input field
class BoolInput extends InputEntity<bool> {
  const BoolInput.pure({
    required super.field,
  }) : super.pure(
          value: false,
        );

  /// Constructor for the input
  const BoolInput.dirty({
    required super.field,
    required super.value,
  }) : super.dirty();

  @override
  String? validator(bool value) => FormBuilderValidators.compose(
        [
          FormBuilderValidators.required(),
        ],
      ).call(value);

  @override
  BoolInput dirty({
    bool? value,
  }) =>
      BoolInput.dirty(
        value: value ?? false,
        field: field,
      );
}
