import "package:form_builder_validators/form_builder_validators.dart";
import "package:form_builder_z/models/input_entity.dart";

/// Input for providing a text input field
class StringInput extends InputEntity<String?> {
  const StringInput.pure({
    required super.field,
    required this.isRequired,
  }) : super.pure(value: null);

  const StringInput.dirty({
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
  StringInput dirty({
    String? value,
    bool? isRequired,
  }) =>
      StringInput.dirty(
        field: field,
        value: value,
        isRequired: isRequired ?? this.isRequired,
      );
}
