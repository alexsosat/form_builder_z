import "package:form_builder_validators/form_builder_validators.dart";

import "../models/base_input.dart";

/// Input for providing an email input field
class EmailInput extends BaseInput<String?> {
  const EmailInput.pure({
    required super.field,
    required this.isRequired,
  }) : super.pure(value: null);

  const EmailInput.dirty({
    required super.value,
    required super.field,
    required this.isRequired,
  }) : super.dirty();

  /// True if the input is required
  final bool isRequired;

  @override
  String? validator(String? value) => FormBuilderValidators.compose(
        [
          FormBuilderValidators.email(checkNullOrEmpty: isRequired),
        ],
      ).call(value);

  @override
  EmailInput dirty({
    String? value,
    bool? isRequired,
  }) =>
      EmailInput.dirty(
        field: field,
        value: value,
        isRequired: isRequired ?? this.isRequired,
      );
}
