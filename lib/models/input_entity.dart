import "package:form_builder_validators/form_builder_validators.dart";
import "package:formz/formz.dart";

/// Base class for all form inputs
class InputEntity<T> extends FormzInput<T?, String> {
  /// Constructor which create a pure [FormzInput] with a clean value.
  const InputEntity.pure({
    required this.field,
    this.validators = const [],
    T? value,
  }) : super.pure(value);

  /// Constructor which create a dirty [FormzInput] with a given value
  const InputEntity.dirty({
    required this.field,
    required this.validators,
    required T? value,
  }) : super.dirty(value);

  /// Name of the field
  final String field;

  /// Active validators for the input
  final List<TranslatedValidator<T>> validators;

  /// Function to set the value of the input and return a new instance of
  /// the input, setting the isPure flag to false
  InputEntity<T> dirty({
    required T? value,
    List<TranslatedValidator<T>>? validators,
  }) =>
      InputEntity<T>.dirty(
        field: field,
        value: value,
        validators: validators ?? const [],
      );

  @override
  String? validator(T? value) {
    for (var validator in validators) {
      final error = validator.validate(value);

      if (error != null) {
        return error;
      }
    }

    return null;
  }
}
