import "dart:typed_data";

import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input for providing an image in [Uint8List] format
class Uint8ListInput extends InputEntity<Uint8List?> {
  /// Creates an unmodified input with an optional initial value.
  const Uint8ListInput.pure({
    required super.field,
    super.value,
    super.validators = const [],
  }) : super.pure();

  /// Call super.dirty to represent a modified form input.
  const Uint8ListInput.dirty({
    required super.field,
    required super.value,
    super.validators = const [],
  }) : super.dirty();

  @override
  Uint8ListInput dirty({
    Uint8List? value,
    List<BaseValidator<Uint8List?>>? validators,
  }) => Uint8ListInput.dirty(
    field: field,
    value: value,
    validators: validators ?? this.validators,
  );
}
