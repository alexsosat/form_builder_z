/// Base class for all form inputs
abstract class FormZInput<T> {
  /// Constructor which create a pure [FormZInput] with a given value.
  const FormZInput({
    required this.field,
    required this.value,
    this.isPure = true,
  });

  /// Constructor which create a dirty [FormZInput] with a given value.

  /// Name of the field
  final String field;

  /// The value of the given [FormZInput].
  /// For example, if you have a `FormZInput` for `FirstName`,
  /// the value could be 'Joe'.
  final T value;

  /// If the [FormZInput] is pure (has been touched/modified).
  /// Typically when the `FormZInput` is initially created,
  /// it is created using the `FormZInput.pure` constructor to
  /// signify that the user has not modified it.
  ///
  /// For subsequent changes (in response to user input), the
  /// `FormZInput.dirty` constructor should be used to signify that
  /// the `FormZInput` has been manipulated.
  final bool isPure;

  /// Whether the [FormZInput] value is valid according to the
  /// overridden `validator`.
  ///
  /// Returns `true` if `validator` returns `null` for the
  /// current [FormZInput] value and `false` otherwise.
  bool get isValid => validator(value) == null;

  /// Whether the [FormZInput] value is not valid.
  /// A value is invalid when the overridden `validator`
  /// returns an error (non-null value).
  bool get isNotValid => !isValid;

  /// Returns a validation error if the [FormZInput] is invalid.
  /// Returns `null` if the [FormZInput] is valid.
  String? get error => validator(value);

  /// The error to display if the [FormZInput] value
  /// is not valid and has been modified.
  String? get displayError => isPure ? null : error;

  /// A function that must return a validation error if the provided
  /// [value] is invalid and `null` otherwise.
  String? validator(T value);

  /// Function to set the value of the input and return a new instance of
  /// the input, setting the isPure flag to false
  FormZInput<T> dirty({T? value});

  @override
  int get hashCode => Object.hashAll([value, isPure]);

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is FormZInput<T> &&
        other.value == value &&
        other.isPure == isPure;
  }

  @override
  String toString() {
    return isPure
        ? '''FormZInput<$T>.pure(value: $value, isValid: $isValid, error: $error)'''
        : '''FormZInput<$T>.dirty(value: $value, isValid: $isValid, error: $error)''';
  }
}
