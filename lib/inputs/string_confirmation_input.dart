import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input for providing a text input field that needs to be confirmed in
/// comparison to another text input field
class StringConfirmationInput extends InputEntity<String?> {
  /// Call super.pure to represent an unmodified form input.
  const StringConfirmationInput.pure({
    required super.field,
    this.textToConfirm,
  }) : super.pure(value: null);

  /// Call super.dirty to represent a modified form input.
  const StringConfirmationInput.dirty({
    required super.value,
    required this.textToConfirm,
    required super.field,
  }) : super.dirty();

  /// Text to match the value of the input
  final String? textToConfirm;

  // Override validator to handle validating a given input value.
  @override
  String? validator(String? value) => FormBuilderValidators.compose(
        [
          FormBuilderValidators.required(),
          FormBuilderValidators.equal(textToConfirm ?? ""),
        ],
      ).call(value);

  @override
  InputEntity<String?> dirty({
    String? value,
    String? textToConfirm,
  }) =>
      StringConfirmationInput.dirty(
        field: field,
        value: value,
        textToConfirm: textToConfirm ?? this.textToConfirm,
      );
}
