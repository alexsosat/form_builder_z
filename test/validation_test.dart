import 'dart:typed_data';

import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/example/example_form.dart';
import 'package:form_builder_z/inputs/bool_input.dart';
import 'package:form_builder_z/inputs/date_time_input.dart';
import 'package:form_builder_z/inputs/date_time_range_input.dart';
import 'package:form_builder_z/inputs/double_input.dart';
import 'package:form_builder_z/inputs/uint8_list_input.dart';
import 'package:form_builder_z/models/input_entity.dart';

void main() {
  test('required fields are invalid before saving while still pure', () {
    final form = ExampleForm();
    expect(form.stringInput.isPure, isTrue);
    expect(form.validate(), isFalse);
    expect(form.errors, contains('text'));
    expect(form.errorList, hasLength(1));
    expect(form.values, {'text': null});
  });

  test('runtime validators persist across repeated saves', () {
    final form = ExampleForm(maxLength: 3);
    expect(form.saveAndValidate({'text': 'abcd'}), isFalse);
    expect(form.stringInput.isPure, isFalse);
    expect(form.saveAndValidate({'text': 'abc'}), isTrue);
    expect(form.errors, isNull);
    expect(form.saveAndValidate({'text': ''}), isFalse);
    expect(form.saveAndValidate({'text': 'abcd'}), isFalse);
  });

  test('supplied inputs retain their values and rules', () {
    const input = InputEntity<String>.pure(field: 'custom', value: 'initial');
    final form = ExampleForm(stringInput: input);
    expect(form.stringInput, same(input));
    expect(form.validate(), isTrue);
    expect(form.saveAndValidate({'custom': 'longer than eight'}), isTrue);
  });

  test('all input types preserve validators and allow explicit replacement',
      () {
    final inputs = <InputEntity>[
      const InputEntity<String>.pure(
        field: 'text',
        validators: [RequiredValidator(errorText: 'required')],
      ),
      const BoolInput.pure(
        field: 'bool',
        validators: [RequiredValidator(errorText: 'required')],
      ),
      const DateTimeInput.pure(
        field: 'date',
        validators: [RequiredValidator(errorText: 'required')],
      ),
      const DateTimeRangeInput.pure(
        field: 'range',
        validators: [RequiredValidator(errorText: 'required')],
      ),
      const DoubleInput.pure(
        field: 'number',
        validators: [RequiredValidator(errorText: 'required')],
      ),
      const Uint8ListInput.pure(
        field: 'file',
        validators: [RequiredValidator(errorText: 'required')],
      ),
    ];
    final values = <Object>[
      'hello',
      true,
      DateTime(2026),
      DateTimeRange(start: DateTime(2026), end: DateTime(2026, 2)),
      2.0,
      Uint8List.fromList([1]),
    ];
    for (var i = 0; i < inputs.length; i++) {
      final input = inputs[i];
      expect(input.isValid, input is BoolInput, reason: input.field);
      final dirty = input.dirty(value: values[i]);
      expect(dirty.runtimeType, input.runtimeType);
      expect(dirty.validators, same(input.validators));
      expect(dirty.isValid, isTrue);
      expect(dirty.dirty(value: null).isValid, input is BoolInput);
    }
  });

  test('explicit validator replacement works for every input type', () {
    checkReplacement<String>(const InputEntity<String>.pure(field: 'text'));
    checkReplacement<bool>(const BoolInput.pure(field: 'bool'));
    checkReplacement<DateTime?>(const DateTimeInput.pure(field: 'date'));
    checkReplacement<DateTimeRange?>(
      const DateTimeRangeInput.pure(field: 'range'),
    );
    checkReplacement<double?>(const DoubleInput.pure(field: 'number'));
    checkReplacement<Uint8List?>(const Uint8ListInput.pure(field: 'file'));
  });

  test('specialized defaults are available on constant pure inputs', () {
    const number = DoubleInput.pure(field: 'number');
    const date = DateTimeInput.pure(field: 'date');
    expect(number.validators.single, isA<NumericValidator>());
    expect(date.validators.single, isA<DateTimeValidator>());
    expect(number.dirty(value: 1).validators, same(number.validators));
    expect(date.dirty(value: DateTime(2026)).validators, same(date.validators));
  });
}

void checkReplacement<T>(InputEntity<T> input) {
  final cleared = input.dirty(value: null, validators: <BaseValidator<T?>>[]);
  expect(cleared.validators, isEmpty);
  expect(cleared.isValid, isTrue);
  final replacement = <BaseValidator<T?>>[
    RequiredValidator<T?>(errorText: 'replacement'),
  ];
  final dirty = input.dirty(value: null, validators: replacement);
  expect(dirty.error, input is BoolInput ? null : 'replacement');
  expect(dirty.validators, same(replacement));
}
