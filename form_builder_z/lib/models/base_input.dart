import "package:formz/formz.dart";

/// Base class for all form inputs
abstract class BaseInput<T> extends FormzInput<T, String> {
  /// Constructor which create a pure [FormzInput] with a given value.
  const BaseInput.pure(super.value) : super.pure();

  /// Constructor which create a dirty [FormzInput] with a given value
  const BaseInput.dirty(super.value) : super.dirty();

  /// Name of the field
  String get field;
}
