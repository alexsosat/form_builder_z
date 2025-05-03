import "dart:typed_data";

import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input for providing an image in [Uint8List] format
class Uint8ListInput extends InputEntity<Uint8List?> {
  /// Call super.pure to represent an unmodified form input.
  const Uint8ListInput.pure({
    required super.field,
  }) : super.pure(value: null);

  /// Call super.dirty to represent a modified form input.
  const Uint8ListInput.dirty({
    required super.field,
    required super.value,
    required super.validators,
  }) : super.dirty();

  @override
  Uint8ListInput dirty({
    Uint8List? value,
    required List<TranslatedValidator<Uint8List?>> validators,
  }) =>
      Uint8ListInput.dirty(
        field: field,
        value: value,
        validators: validators,
      );
}
