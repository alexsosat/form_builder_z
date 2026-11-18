import "package:material_ui/material_ui.dart";
import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input that handles a range of dates input field
class DateTimeRangeInput extends InputEntity<DateTimeRange?> {
  /// Creates an unmodified input with an optional initial value.
  const DateTimeRangeInput.pure({
    required super.field,
    super.value,
    super.validators = const [],
  }) : super.pure();

  const DateTimeRangeInput.dirty({
    required super.field,
    required super.value,
    super.validators = const [],
  }) : super.dirty();

  @override
  DateTimeRangeInput dirty({
    DateTimeRange? value,
    List<BaseValidator<DateTimeRange?>>? validators,
  }) => DateTimeRangeInput.dirty(
    field: field,
    value: value,
    validators: validators ?? this.validators,
  );
}
