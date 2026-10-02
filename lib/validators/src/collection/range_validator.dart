import '../../form_builder_z_validators.dart';

/// {@template range_validator_template}
/// [RangeValidator] extends [TranslatedValidator] to validate if a value falls within a specified range.
///
/// This validator works with various types, including numeric types and collections.
///
/// ## Parameters:
///
/// - [min] The minimum value of the range.
/// - [max] The maximum value of the range.
/// - [inclusive] Whether the range is inclusive of the min and max values.
/// - [errorText] The error message returned if the validation fails.
/// - [checkNullOrEmpty] Whether to check if the value is null or empty.
///
/// This validator uses [MinValidator], [MaxValidator], [MinLengthValidator], and [MaxLengthValidator] internally.
///
/// {@endtemplate}
class RangeValidator<T> extends TranslatedValidator<T> {
  /// Constructor for the range validator.
  const RangeValidator(
    this.min,
    this.max, {
    this.inclusive = true,

    /// {@macro base_validator_error_text}
    super.errorText,

    /// {@macro base_validator_null_check}
    super.checkNullOrEmpty,
  });

  /// The minimum value of the range.
  final num min;

  /// The maximum value of the range.
  final num max;

  /// Whether the range is inclusive of the min and max values.
  final bool inclusive;

  @override
  String get translatedErrorText =>
      FormBuilderZLocalizations.current.betweenErrorText(min, max);

  @override
  String? validateValue(T valueCandidate) {
    MinValidator<T> minValidator = MinValidator<T>(
      min,
      inclusive: inclusive,
      errorText: errorText,
      checkNullOrEmpty: checkNullOrEmpty,
    );
    MaxValidator<T> maxValidator = MaxValidator<T>(
      max,
      inclusive: inclusive,
      errorText: errorText,
      checkNullOrEmpty: checkNullOrEmpty,
    );
    MinLengthValidator<T> minLengthValidator = MinLengthValidator<T>(
      min.toInt(),
      errorText: errorText,
      checkNullOrEmpty: checkNullOrEmpty,
    );
    MaxLengthValidator<T> maxLengthValidator = MaxLengthValidator<T>(
      max.toInt(),
      errorText: errorText,
      checkNullOrEmpty: checkNullOrEmpty,
    );

    final String? minResult = minValidator.validate(valueCandidate);
    final String? maxResult = maxValidator.validate(valueCandidate);
    final String? minLengthResult = minLengthValidator.validate(
      valueCandidate,
    );
    final String? maxLengthResult = maxLengthValidator.validate(
      valueCandidate,
    );

    if ((minResult == null && maxResult == null) ||
        (minLengthResult == null && maxLengthResult == null)) {
      return null;
    } else {
      return errorText;
    }
  }
}
