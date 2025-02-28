import "package:form_builder_validators/form_builder_validators.dart";
import "package:form_builder_z/models/base_input.dart";

/// Input for providing a text input field
class TextInput extends BaseInput<String?> {
  const TextInput.pure({
    required super.field,
    required this.isRequired,
  }) : super.pure(value: null);

  const TextInput.dirty({
    required super.field,
    required super.value,
    required this.isRequired,
  }) : super.dirty();

  /// True if the input is required
  final bool isRequired;

  @override
  String? validator(String? value) => FormBuilderValidators.compose(
        [
          if (isRequired) FormBuilderValidators.required(),
        ],
      ).call(value);

  @override
  TextInput dirty({
    String? value,
    bool? isRequired,
  }) =>
      TextInput.dirty(
        field: field,
        value: value,
        isRequired: isRequired ?? this.isRequired,
      );
}
