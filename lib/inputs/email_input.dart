import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input for providing an email input field
class EmailInput extends InputEntity<String?> {
  const EmailInput.pure({
    required super.field,
    super.validators,
  }) : super.pure(value: null);

  const EmailInput.dirty({
    required super.value,
    required super.field,
    super.validators,
  }) : super.dirty();

  @override
  EmailInput dirty({
    String? value,
    bool? isRequired,
    List<TranslatedValidator<String>>? validators,
  }) =>
      EmailInput.dirty(
        field: field,
        value: value,
        validators: validators ?? this.validators,
      );

  @override
  String? validator(String? value) {
    validators.add(EmailValidator());

    return super.validator(value);
  }
}
