import "dart:math";
import "dart:typed_data";

import "package:form_builder_validators/form_builder_validators.dart";
import "package:form_builder_z/models/input_entity.dart";
import "package:intl/intl.dart";

/// Input for providing an image in [Uint8List] format
class Uint8ListInput extends InputEntity<Uint8List?> {
  /// Call super.pure to represent an unmodified form input.
  const Uint8ListInput.pure({
    required super.field,
    required this.isRequired,
    this.maxLength,
  }) : super.pure(value: null);

  /// Call super.dirty to represent a modified form input.
  const Uint8ListInput.dirty({
    required super.field,
    required super.value,
    required this.isRequired,
    this.maxLength,
  }) : super.dirty();

  /// True if the input is required
  final bool isRequired;

  /// Max length of bytes for the image
  ///
  /// Null if there is no max length
  final int? maxLength;

  @override
  String? validator(Uint8List? value) => FormBuilderValidators.compose(
        [
          if (isRequired) FormBuilderValidators.required(),
          _validateFilesLength(),
        ],
      ).call(value);

  @override
  Uint8ListInput dirty({
    Uint8List? value,
    bool? isRequired,
    int? maxLength,
  }) =>
      Uint8ListInput.dirty(
        field: field,
        value: value,
        isRequired: isRequired ?? this.isRequired,
        maxLength: maxLength ?? this.maxLength,
      );

  /// Validator to check if any element does not exceed 5 Megabytes
  String? Function(Uint8List? value) _validateFilesLength() => (value) {
        if (value == null && isRequired) {
          return FormBuilderLocalizations.current.requiredErrorText;
        }

        if (value == null || maxLength == null) {
          return null;
        }

        final int fileSize = value.lengthInBytes;

        if (fileSize > maxLength!) {
          return FormBuilderLocalizations.current.fileSizeErrorText(
            formatBytes(maxLength!),
            formatBytes(fileSize),
          );
        }

        return null;
      };

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

    const int base = 1000;
    final List<String> units = <String>['B', 'kB', 'MB', 'GB', 'TB'];

    final int digitGroups = (log10(bytes) / log10(base)).floor();
    final double size = bytes / pow(base, digitGroups);

    return "${NumberFormat("#,##0.#").format(size)} ${units[digitGroups]}";
  }
}
