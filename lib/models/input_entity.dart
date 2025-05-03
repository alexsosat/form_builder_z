import "package:form_builder_validators/form_builder_validators.dart";
import "package:formz/formz.dart";

/// Base class for all form inputs
abstract class InputEntity<T> extends FormzInput<T, String> {
  /// Constructor which create a pure [FormzInput] with a clean value.
  const InputEntity.pure({
    required this.field,
    this.validators = const [],
    required T value,
  }) : super.pure(value);

  /// Constructor which create a dirty [FormzInput] with a given value
  const InputEntity.dirty({
    required this.field,
    required this.validators,
    required T value,
  }) : super.dirty(value);

  /// Name of the field
  final String field;

  /// Active validators for the input
  final List<TranslatedValidator<T>> validators;

  /// Function to set the value of the input and return a new instance of
  /// the input, setting the isPure flag to false
  InputEntity<T> dirty({
    T? value,
    required List<TranslatedValidator<T>> validators,
  });

  @override
  String? validator(T value) {
    for (var validator in validators) {
      final error = validator.validate(value);

      if (error != null) {
        return error;
      }
    }

    return null;
  }
}
