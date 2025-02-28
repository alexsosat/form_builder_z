import "package:formz/formz.dart";

/// Base class for all form inputs
abstract class BaseInput<T> extends FormzInput<T, String> {
  /// Constructor which create a pure [FormzInput] with a clean value.
  const BaseInput.pure({
    required this.field,
    required T value,
  }) : super.pure(value);

  /// Constructor which create a dirty [FormzInput] with a given value
  const BaseInput.dirty({
    required this.field,
    required T value,
  }) : super.dirty(value);

  /// Name of the field
  final String field;

  /// Function to set the value of the input and return a new instance of
  /// the input, setting the isPure flag to false
  BaseInput<T> dirty({T? value});
}
