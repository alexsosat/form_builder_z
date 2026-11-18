import 'dart:typed_data';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/form_builder_z.dart';
import 'package:material_ui/material_ui.dart';

import 'form_widget_test.dart'
    show LegacyForm, TestFormWidget, host, definitions;
import 'formatted_fields_test.dart' show FormattedForm;

void main() {
  test('omitted pure values preserve existing defaults and validators', () {
    const inputs = <InputEntity>[
      InputEntity<String>.pure(field: 'text'),
      BoolInput.pure(field: 'bool'),
      DoubleInput.pure(field: 'number'),
      DateTimeInput.pure(field: 'date'),
      DateTimeRangeInput.pure(field: 'range'),
      Uint8ListInput.pure(field: 'file'),
    ];
    expect(inputs.map((input) => input.value), [
      null,
      false,
      null,
      null,
      null,
      null,
    ]);
    expect(inputs.every((input) => input.isPure), isTrue);
    expect(inputs[2].validators.single, isA<NumericValidator>());
    expect(inputs[3].validators.single, isA<DateTimeValidator>());
    expect(const BoolInput.pure(field: 'nullable', value: null).value, isNull);
  });

  test('all pure constructors accept initial values without marking dirty', () {
    final date = DateTime(2026, 10, 5);
    final range = DateTimeRange(start: date, end: DateTime(2026, 10, 7));
    final bytes = Uint8List.fromList([1, 2]);
    final inputs = <InputEntity>[
      const InputEntity<String>.pure(field: 'text', value: 'Alex'),
      const BoolInput.pure(field: 'bool', value: true),
      const DoubleInput.pure(field: 'number', value: 150.75),
      DateTimeInput.pure(field: 'date', value: date),
      DateTimeRangeInput.pure(field: 'range', value: range),
      Uint8ListInput.pure(field: 'file', value: bytes),
    ];
    final form = FormattedForm(inputs);
    expect(form.values, {
      'text': 'Alex',
      'bool': true,
      'number': 150.75,
      'date': date,
      'range': range,
      'file': bytes,
    });
    expect(form.isPure, isTrue);
    expect(form.validate(), isTrue);
    expect(form.saves, 0);
    for (final input in inputs) {
      final edited = input.dirty(value: input.value);
      expect(edited.runtimeType, input.runtimeType);
      expect(edited.isPure, isFalse);
      expect(edited.validators, same(input.validators));
    }
  });

  test('validators reject initial values before any save', () {
    final form = FormattedForm([
      const DoubleInput.pure(
        field: 'number',
        value: 12,
        validators: [MaxValidator(10, errorText: 'Too high')],
      ),
      const BoolInput.pure(
        field: 'bool',
        value: false,
        validators: [EqualValidator(true, errorText: 'Accept terms')],
      ),
    ]);
    expect(form.validate(), isFalse);
    expect(form.errors, {'number': 'Too high', 'bool': 'Accept terms'});
    expect(form.isPure, isTrue);
    expect(form.saves, 0);
  });

  testWidgets(
    'initial specialized values display without saves or dummy replacement',
    (tester) async {
      final date = DateTime(2026, 10, 5);
      final range = DateTimeRange(start: date, end: DateTime(2026, 10, 7));
      final bytes = Uint8List.fromList([1, 2]);
      final form =
          LegacyForm(name: 'Alex', formKey: GlobalKey<FormBuilderState>())
            ..number = const DoubleInput.pure(field: 'number', value: 0)
            ..checkbox = const BoolInput.pure(field: 'checkbox', value: false)
            ..date = DateTimeInput.pure(field: 'date', value: date)
            ..range = DateTimeRangeInput.pure(field: 'range', value: range)
            ..file = Uint8ListInput.pure(field: 'file', value: bytes);
      await tester.pumpWidget(
        host(
          TestFormWidget(
            form: form,
            declarations: [
              for (final field in definitions())
                if ((field as Field).name == 'number')
                  Field.number('number', dummyValue: 99)
                else if (field.name == 'checkbox')
                  Field.checkbox('checkbox', dummyValue: true)
                else
                  field,
            ],
          ),
        ),
      );
      final fields = form.formKey!.currentState!.fields;
      expect(fields['number']!.value, '0.0');
      expect(fields['checkbox']!.value, isFalse);
      expect(fields['date']!.value, date);
      expect(fields['range']!.value, range);
      expect(fields['file']!.value, bytes);
      final numberControl = tester.widget<TextField>(
        find.descendant(
          of: find.byKey(const ValueKey('number')),
          matching: find.byType(TextField),
        ),
      );
      expect(numberControl.controller!.text, '0.0');
      final checkbox = tester.widget<Checkbox>(
        find.descendant(
          of: find.byKey(const ValueKey('checkbox')),
          matching: find.byType(Checkbox),
        ),
      );
      expect(checkbox.value, isFalse);
      for (final name in ['date', 'range']) {
        final control = tester.widget<TextField>(
          find.descendant(
            of: find.byKey(ValueKey(name)),
            matching: find.byType(TextField),
          ),
        );
        expect(control.controller!.text, contains('2026'));
      }
      expect(form.isPure, isTrue);
      expect(form.saves, 0);
      expect(form.values['number'], 0);
      expect(form.values['checkbox'], isFalse);
    },
  );
}
