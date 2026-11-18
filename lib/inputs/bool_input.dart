import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input that handles a boolean (checkbox) input field
class BoolInput extends InputEntity<bool> {
  /// Creates an unmodified input, defaulting to false.
  const BoolInput.pure({
    required super.field,
    super.value = false,
    super.validators = const [],
  }) : super.pure();

  /// Constructor for the input
  const BoolInput.dirty({
    required super.field,
    required super.value,
    super.validators = const [],
  }) : super.dirty();

  @override
  BoolInput dirty({bool? value, List<BaseValidator<bool?>>? validators}) =>
      BoolInput.dirty(
        value: value ?? false,
        field: field,
        validators: validators ?? this.validators,
      );
}
