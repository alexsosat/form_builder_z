import "package:flutter/material.dart";
import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input that handles a range of dates input field
class DateTimeRangeInput extends InputEntity<DateTimeRange?> {
  const DateTimeRangeInput.pure({
    required super.field,
    super.validators,
  }) : super.pure(value: null);

  const DateTimeRangeInput.dirty({
    required super.field,
    required super.value,
    super.validators,
  }) : super.dirty();

  @override
  DateTimeRangeInput dirty({
    DateTimeRange? value,
    bool? isRequired,
    List<TranslatedValidator<DateTimeRange>>? validators,
  }) =>
      DateTimeRangeInput.dirty(
        field: field,
        value: value,
        validators: validators ?? this.validators,
      );
}
