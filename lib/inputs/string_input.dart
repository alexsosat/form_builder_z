import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input for providing a text input field
class StringInput extends InputEntity<String?> {
  const StringInput.pure({
    required super.field,
  }) : super.pure(value: null);

  const StringInput.dirty({
    required super.field,
    required super.value,
    required super.validators,
  }) : super.dirty();

  @override
  StringInput dirty({
    String? value,
    required List<TranslatedValidator<String?>> validators,
  }) =>
      StringInput.dirty(
        field: field,
        value: value,
        validators: validators,
      );
}
