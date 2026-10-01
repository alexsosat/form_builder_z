import 'package:form_builder_validators/form_builder_validators.dart';

import '../models/input_entity.dart';

/// Input that handles a date time input field
class DateTimeInput extends InputEntity<DateTime?> {
  const DateTimeInput.pure({
    required super.field,
    super.validators = const [DateTimeValidator()],
  }) : super.pure(
          value: null,
        );

  const DateTimeInput.dirty({
    required super.value,
    required super.field,
    super.validators = const [DateTimeValidator()],
  }) : super.dirty();

  @override
  DateTimeInput dirty({
    DateTime? value,
    List<BaseValidator<DateTime?>>? validators,
  }) =>
      DateTimeInput.dirty(
        field: field,
        value: value,
        validators: validators ?? this.validators,
      );
}
