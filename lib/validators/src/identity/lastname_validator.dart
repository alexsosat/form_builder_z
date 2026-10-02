import '../../form_builder_z_validators.dart';

/// {@template last_name_validator_template}
/// [LastNameValidator] extends [TranslatedValidator] to validate if a string represents a valid last name.
///
/// This validator checks if the last name matches a specified regex pattern and is not in a blacklist,
/// and optionally checks if it is in a whitelist.
///
/// ## Parameters:
///
/// - [regex] The regular expression used to validate the last name format. Defaults to a standard last name regex.
/// - [lastNameWhitelist] A list of valid last names that are explicitly allowed.
/// - [lastNameBlacklist] A list of invalid last names that are explicitly disallowed.
/// - [errorText] The error message returned if the validation fails.
/// - [checkNullOrEmpty] Whether to check if the value is null or empty.
///
/// {@endtemplate}
class LastNameValidator extends TranslatedValidator<String> {
  /// Constructor for the last name validator.
  const LastNameValidator({
    /// {@macro last_name_template}
    this.regex,
    this.lastNameWhitelist = const <String>[],
    this.lastNameBlacklist = const <String>[],
    super.errorText,
    super.checkNullOrEmpty,
  });

  /// The regular expression used to validate the last name format.
  final RegExp? regex;

  /// A list of valid last names that are explicitly allowed.
  final List<String> lastNameWhitelist;

  /// A list of invalid last names that are explicitly disallowed.
  final List<String> lastNameBlacklist;

  /// {@template last_name_template}
  /// This regex matches a valid last name format.
  ///
  /// - It requires the first letter to be uppercase.
  /// - It allows only alphabetic characters.
  ///
  /// Examples: Smith, Johnson, Brown
  /// {@endtemplate}
  static final RegExp _lastName = RegExp(r'^[A-Z][a-zA-Z]+$');

  @override
  String get translatedErrorText =>
      FormBuilderZLocalizations.current.lastNameErrorText;

  @override
  String? validateValue(String valueCandidate) {
    if (lastNameBlacklist.contains(valueCandidate)) {
      return errorText;
    }

    if (!(regex ?? _lastName).hasMatch(valueCandidate)) {
      return errorText;
    }

    if (lastNameWhitelist.isEmpty ||
        lastNameWhitelist.contains(valueCandidate)) {
      return null;
    }

    return errorText;
  }
}
