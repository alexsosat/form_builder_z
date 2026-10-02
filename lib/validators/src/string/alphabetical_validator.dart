import '../../form_builder_z_validators.dart';

/// {@template alphabetical_validator_template}
/// [AlphabeticalValidator] extends [TranslatedValidator] to validate if a string contains only alphabetical characters.
///
/// This validator checks if the value matches the specified regex pattern that allows only letters (both uppercase and lowercase).
///
/// ## Parameters:
///
/// - [regex] The regular expression used to validate the alphabetical format. Defaults to a regex that matches only alphabetical characters.
/// - [errorText] The error message returned if the validation fails.
/// - [checkNullOrEmpty] Whether to check if the value is null or empty.
///
/// {@endtemplate}
class AlphabeticalValidator extends TranslatedValidator<String> {
  /// Constructor for the alphabetical validator.
  const AlphabeticalValidator({
    /// {@macro alphabetical_template}
    this.regex,

    /// {@macro base_validator_error_text}
    super.errorText,

    /// {@macro base_validator_null_check}
    super.checkNullOrEmpty,
  });

  /// The regular expression used to validate the alphabetical format.
  final RegExp? regex;

  /// {@template alphabetical_template}
  /// This regex matches only alphabetical characters.
  ///
  /// - It allows both uppercase and lowercase letters.
  ///
  /// Examples: abcdef, XYZ
  /// {@endtemplate}
  static final RegExp _alphabetical = RegExp(r'^[a-zA-Z]+$');

  @override
  String get translatedErrorText =>
      FormBuilderZLocalizations.current.alphabeticalErrorText;

  @override
  String? validateValue(String valueCandidate) {
    return (regex ?? _alphabetical).hasMatch(valueCandidate) ? null : errorText;
  }
}
