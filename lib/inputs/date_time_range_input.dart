import "package:flutter/material.dart";
import "package:form_builder_validators/form_builder_validators.dart";

import "../models/input_entity.dart";

/// Input that handles a range of dates input field
class DateTimeRangeInput extends InputEntity<DateTimeRange?> {
  const DateTimeRangeInput.pure({
    required super.field,
    required this.isRequired,
  }) : super.pure(value: null);

  const DateTimeRangeInput.dirty({
    required super.field,
    required super.value,
    required this.isRequired,
  }) : super.dirty();

  /// True if the input is required
  final bool isRequired;

  @override
  String? validator(DateTimeRange? value) =>
      FormBuilderValidators.compose<DateTimeRange>(
        [
          if (isRequired) FormBuilderValidators.required(),
        ],
      ).call(value);

  @override
  DateTimeRangeInput dirty({
    DateTimeRange? value,
    bool? isRequired,
  }) =>
      DateTimeRangeInput.dirty(
        field: field,
        value: value,
        isRequired: isRequired ?? this.isRequired,
      );
}
