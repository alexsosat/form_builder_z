import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input for providing a text input field that needs to be confirmed in
/// comparison to another text input field
class StringConfirmationInput extends InputEntity<String?> {
  /// Call super.pure to represent an unmodified form input.
  const StringConfirmationInput.pure({
    required super.field,
    this.textToConfirm,
    super.validators,
  }) : super.pure(value: null);

  /// Call super.dirty to represent a modified form input.
  const StringConfirmationInput.dirty({
    required super.field,
    required super.value,
    required this.textToConfirm,
    super.validators,
  }) : super.dirty();

  /// Text to match the value of the input
  final String? textToConfirm;

  @override
  InputEntity<String?> dirty({
    String? value,
    String? textToConfirm,
    List<TranslatedValidator<String>>? validators,
  }) =>
      StringConfirmationInput.dirty(
        field: field,
        value: value,
        textToConfirm: textToConfirm ?? this.textToConfirm,
        validators: validators ?? this.validators,
      );

  // Override validator to handle validating a given input value.
  @override
  String? validator(String? value) {
    validators.add(EqualValidator(textToConfirm ?? ""));

    return super.validator(value);
  }
}
