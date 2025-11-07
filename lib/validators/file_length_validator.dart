import 'dart:math';
import 'dart:typed_data';

import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

/// {@template file_size_validator_template}
/// [FileSizeValidator] extends [TranslatedValidator] to validate if a file size string is within a specified maximum size.
///
/// This validator checks if the file size, parsed from the string, does not exceed the maximum size limit.
///
/// ## Parameters:
///
/// - [maxSize] The maximum allowed file size in bytes.
/// - [base1024Conversion] Whether to use base 1024 (true) or base 1000 (false) for the conversion.
/// - [errorText] The error message returned if the validation fails.
/// - [checkNullOrEmpty] Whether to check if the value is null or empty.
///
/// {@endtemplate}
class FileSizeValidator extends TranslatedValidator<Uint8List?> {
  /// Constructor for the file size validator.
  const FileSizeValidator(
    this.maxSize, {
    this.base1024Conversion = true,

    /// {@macro base_validator_error_text}
    super.errorText,

    /// {@macro base_validator_null_check}
    super.checkNullOrEmpty,
  });

  /// The maximum allowed file size in bytes.
  final int maxSize;

  /// Whether to use base 1024 (true) or base 1000 (false) for the conversion.
  final bool base1024Conversion;

  @override
  String get translatedErrorText => FormBuilderLocalizations.current
      .fileSizeErrorText(formatBytes(0), formatBytes(maxSize));

  @override
  String? validateValue(Uint8List? valueCandidate) {
    if (valueCandidate == null) {
      return null;
    }

    final int size = valueCandidate.lengthInBytes;

    if (size > maxSize) {
      return errorText;
    }

    return null;
  }

  /// Helper function to format bytes into a human-readable string (e.g., KB, MB, GB).
  ///
  /// ## Parameters:
  /// - [bytes] The size in bytes to be formatted.
  ///
  /// ## Returns:
  /// A formatted string representing the size in human-readable units.
  String formatBytes(int bytes) {
    double log10(num x) => log(x) / ln10;

    if (bytes <= 0) return '0 B';

    final int base = base1024Conversion ? 1024 : 1000;
    final List<String> units = base1024Conversion
        ? <String>['B', 'KiB', 'MiB', 'GiB', 'TiB']
        : <String>['B', 'kB', 'MB', 'GB', 'TB'];

    final int digitGroups = (log10(bytes) / log10(base)).floor();
    final double size = bytes / pow(base, digitGroups);

    return "${NumberFormat("#,##0.#").format(size)} ${units[digitGroups]}";
  }
}
