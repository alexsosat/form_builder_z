import 'package:form_builder_validators/form_builder_validators.dart';

import '../models/input_entity.dart';

/// Input that handles a date time input field
class DateTimeInput extends InputEntity<DateTime?> {
  const DateTimeInput.pure({
    required super.field,
  }) : super.pure(
          value: null,
        );

  const DateTimeInput.dirty({
    required super.value,
    required super.field,
  }) : super.dirty();

  @override
  String? validator(DateTime? value) => FormBuilderValidators.compose<DateTime>(
        [
          FormBuilderValidators.required(),
          FormBuilderValidators.dateTime(),
        ],
      ).call(value);

  @override
  DateTimeInput dirty({
    DateTime? value,
  }) =>
      DateTimeInput.dirty(
        field: field,
        value: value,
      );
}
