import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_z/example/example_form.dart';
import 'package:form_builder_z/example/example_form_widget.dart';
import 'package:form_builder_z/form_builder_z.dart';
import 'package:form_builder_z/src/dummy_value_initializer.dart';

import 'form_widget_test.dart' show TestFormWidget, host, enter;

class DummyForm extends FormEntity {
  DummyForm(this._inputs) : super(formKey: GlobalKey<FormBuilderState>());

  List<InputEntity> _inputs;
  int saves = 0;
  Map<String, dynamic>? lastSave;

  @override
  List<InputEntity> get inputs => _inputs;

  @override
  void save(Map<String, dynamic> fields) {
    saves++;
    lastSave = Map.of(fields);
    _inputs = [
      for (final input in _inputs) input.dirty(value: fields[input.field]),
    ];
  }

  void resetName() {
    _inputs = [const InputEntity<String>.pure(field: 'name')];
  }
}

DummyForm emptyName() =>
    DummyForm([const InputEntity<String>.pure(field: 'name')]);

class ConditionalDummyWidget extends FormWidget<DummyForm> {
  const ConditionalDummyWidget({
    super.key,
    required super.form,
    super.onChanged,
  });

  @override
  List<Object> fields() => [
        Field.checkbox('show', dummyValue: true),
        Field.text('details',
            label: 'Conditional details',
            dummyValue: 'Ready',
            hidden: form.values['show'] != true),
      ];
}

void main() {
  testWidgets('all input factories seed typed values before controls mount',
      (tester) async {
    final date = DateTime(2026, 1, 2);
    final datetime = DateTime(2026, 1, 2, 12, 30);
    final range = DateTimeRange(start: date, end: DateTime(2026, 1, 3));
    final bytes = Uint8List.fromList([1, 2, 3]);
    final form = DummyForm([
      for (final name in ['name', 'email', 'password', 'bio'])
        InputEntity<String>.pure(field: name),
      const DoubleInput.pure(field: 'number', validators: []),
      const InputEntity<bool>.pure(field: 'checkbox'),
      const DateTimeInput.pure(field: 'date', validators: []),
      const DateTimeInput.pure(field: 'datetime', validators: []),
      const DateTimeRangeInput.pure(field: 'range'),
      const InputEntity<int>.pure(field: 'choice'),
      const Uint8ListInput.pure(field: 'file'),
    ]);
    var changes = 0;
    var failures = 0;
    var submissions = 0;
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      onChanged: (_, value) => changes++,
      onFailure: (_) => failures++,
      onSubmit: (_) => submissions++,
      declarations: [
        Field.text('name', dummyValue: 'Alex'),
        Field.email('email', dummyValue: 'alex@example.com'),
        Field.password('password', dummyValue: 'secret'),
        Field.textArea('bio', dummyValue: 'Sample biography'),
        Field.number('number', dummyValue: 12.5),
        Field.checkbox('checkbox', dummyValue: true),
        Field.date('date', dummyValue: date),
        Field.datetime('datetime', dummyValue: datetime),
        Field.dateRange('range',
            firstDate: DateTime(2020),
            lastDate: DateTime(2030),
            dummyValue: range),
        Field.dropdown<int>('choice', dummyValue: 2, items: const [
          DropdownMenuItem(value: 1, child: Text('One')),
          DropdownMenuItem(value: 2, child: Text('Two')),
        ]),
        Field.builder<Uint8List>('file',
            dummyValue: bytes,
            builder: (_, state) => Text('Bytes: ${state.value?.length}')),
      ],
    )));
    await tester.pump();
    final expected = {
      'name': 'Alex',
      'email': 'alex@example.com',
      'password': 'secret',
      'bio': 'Sample biography',
      'number': 12.5,
      'checkbox': true,
      'date': date,
      'datetime': datetime,
      'range': range,
      'choice': 2,
      'file': bytes,
    };
    expect(form.values, expected);
    expect(form.lastSave, expected);
    expect(form.saves, 1);
    expect(form.inputs.every((input) => !input.isPure), isTrue);
    final controls = form.formKey!.currentState!.fields;
    for (final entry in expected.entries) {
      expect(controls[entry.key]!.value,
          entry.key == 'number' ? '12.5' : entry.value);
    }
    expect(changes, 0);
    expect(failures, 0);
    expect(submissions, 0);
    expect(tester.takeException(), isNull);
  });

  test('empty pure inputs fill while existing and dirty values survive', () {
    final form = DummyForm([
      const InputEntity<String>.pure(field: 'blank', value: '  '),
      const InputEntity<List<int>>.pure(field: 'list', value: []),
      const InputEntity<Map<String, int>>.pure(field: 'map', value: {}),
      InputEntity<Uint8List>.pure(field: 'bytes', value: Uint8List(0)),
      const InputEntity<String>.pure(field: 'prefilled', value: 'Existing'),
      const InputEntity<String>.dirty(
          field: 'cleared', value: '', validators: []),
      const BoolInput.pure(field: 'false'),
      const InputEntity<double>.pure(field: 'zero', value: 0),
      const InputEntity<String>.pure(field: 'undeclared'),
    ]);
    final initializer = DummyValueInitializer();
    expect(
        initializer.apply(
            form,
            [
              Field.text('blank', dummyValue: 'Filled'),
              Field.builder<List<int>>('list',
                  dummyValue: [1], builder: (_, state) => const SizedBox()),
              Field.builder<Map<String, int>>('map',
                  dummyValue: {'one': 1},
                  builder: (_, state) => const SizedBox()),
              Field.builder<Uint8List>('bytes',
                  dummyValue: Uint8List.fromList([1]),
                  builder: (_, state) => const SizedBox()),
              Field.text('prefilled', dummyValue: 'Replacement'),
              Field.text('cleared', dummyValue: 'Replacement'),
              Field.checkbox('false', dummyValue: true),
              Field.number('zero', dummyValue: 10),
              Field.text('undeclared'),
            ],
            isDebugMode: true,
            enabled: true),
        isTrue);
    expect(form.values, {
      'blank': 'Filled',
      'list': [1],
      'map': {'one': 1},
      'bytes': Uint8List.fromList([1]),
      'prefilled': 'Existing',
      'cleared': '',
      'false': false,
      'zero': 0.0,
      'undeclared': null,
    });
    expect(form.saves, 1);
  });

  test('non-debug mode cannot seed even when enabled', () {
    final initializer = DummyValueInitializer();
    final form = emptyName();
    final fields = [Field.text('name', dummyValue: 'Sample')];
    expect(initializer.apply(form, fields, isDebugMode: false, enabled: true),
        isFalse);
    expect(form.values['name'], isNull);
    expect(form.saves, 0);
    expect(form.inputs.single.isPure, isTrue);
  });

  testWidgets('useDummyValues disables initialization', (tester) async {
    final form = emptyName();
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      useDummyValues: false,
      declarations: [Field.text('name', dummyValue: 'Sample')],
    )));
    expect(form.values['name'], isNull);
    expect(form.saves, 0);
    expect(form.inputs.single.isPure, isTrue);
    expect(form.formKey!.currentState!.fields['name']!.value, isNull);
  });

  testWidgets('invalid declarations cannot initialize model values',
      (tester) async {
    final form = DummyForm([
      const InputEntity<String>.pure(field: 'name'),
      const InputEntity<String>.pure(field: 'missing'),
    ]);
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      declarations: [Field.text('name', dummyValue: 'Sample')],
    )));
    expect(tester.takeException(), isA<ArgumentError>());
    expect(form.values, {'name': null, 'missing': null});
    expect(form.saves, 0);
    expect(form.inputs.every((input) => input.isPure), isTrue);
    await tester.pumpWidget(host(TestFormWidget(
      key: const ValueKey('valid form'),
      form: form,
      declarations: [
        Field.text('name', dummyValue: 'Sample'),
        Field.text('missing'),
      ],
    )));
    expect(form.values, {'name': 'Sample', 'missing': null});
    expect(form.saves, 1);
    expect(tester.takeException(), isNull);
  });

  testWidgets('a rejected duplicate mount cannot seed the owned form',
      (tester) async {
    final form = emptyName();
    await tester.pumpWidget(host(Column(children: [
      TestFormWidget(
        key: const ValueKey('owner'),
        form: form,
        useDummyValues: false,
        declarations: [Field.text('name')],
      ),
      TestFormWidget(
        key: const ValueKey('duplicate'),
        form: form,
        declarations: [Field.text('name', dummyValue: 'Sample')],
      ),
    ])));
    expect(tester.takeException(), isA<StateError>());
    expect(form.values['name'], isNull);
    expect(form.saves, 0);
    expect(form.inputs.single.isPure, isTrue);
    expect(form.formKey!.currentState!.fields['name']!.value, isNull);
    await enter(tester, 'name', 'Accepted');
    expect(form.values['name'], 'Accepted');
    expect(form.saves, 1);
    expect(tester.takeException(), isNull);
  });

  testWidgets('rebuilds, user clearing, and remounting do not reseed',
      (tester) async {
    final form = emptyName();
    Widget widget(String dummy) => host(TestFormWidget(
          form: form,
          declarations: [Field.text('name', dummyValue: dummy)],
        ));
    await tester.pumpWidget(widget('Sample'));
    await tester.pumpWidget(widget('Changed'));
    expect(form.values['name'], 'Sample');
    expect(form.saves, 1);
    await enter(tester, 'name', '');
    await tester.pumpWidget(widget('Changed'));
    expect(form.values['name'], '');
    await tester.pumpWidget(const SizedBox());
    form.resetName();
    final saves = form.saves;
    await tester.pumpWidget(widget('Remounted'));
    expect(form.values['name'], isNull);
    expect(form.saves, saves);
  });

  testWidgets('replacement entity seeds independently', (tester) async {
    final first = emptyName();
    final second = emptyName();
    const key = ValueKey('form');
    Widget widget(DummyForm form) => host(TestFormWidget(
          key: key,
          form: form,
          declarations: [Field.text('name', dummyValue: 'Sample')],
        ));
    await tester.pumpWidget(widget(first));
    await tester.pumpWidget(widget(second));
    expect(first.saves, 1);
    expect(second.saves, 1);
    expect(second.values['name'], 'Sample');
    expect(second.formKey!.currentState!.fields['name']!.value, 'Sample');
    expect(tester.takeException(), isNull);
  });

  testWidgets('enabling autofill waits for a new binding', (tester) async {
    final form = emptyName();
    Widget widget(bool enabled) => host(TestFormWidget(
          form: form,
          useDummyValues: enabled,
          declarations: [Field.text('name', dummyValue: 'Sample')],
        ));
    await tester.pumpWidget(widget(false));
    await tester.pumpWidget(widget(true));
    expect(form.values['name'], isNull);
    expect(form.saves, 0);
    await tester.pumpWidget(const SizedBox());
    await tester.pumpWidget(widget(true));
    expect(form.values['name'], 'Sample');
    expect(form.saves, 1);
  });

  testWidgets('seeded conditions apply before the first visible layout',
      (tester) async {
    final form = DummyForm([
      const InputEntity<bool>.pure(field: 'show'),
      const InputEntity<String>.pure(field: 'details'),
    ]);
    var changes = 0;
    await tester.pumpWidget(host(ConditionalDummyWidget(
      form: form,
      onChanged: (_, value) => changes++,
    )));
    expect(form.values, {'show': true, 'details': 'Ready'});
    expect(find.text('Conditional details'), findsOneWidget);
    expect(form.formKey!.currentState!.fields['details']!.value, 'Ready');
    expect(form.saves, 1);
    expect(changes, 0);
  });

  testWidgets('hidden, disabled and read-only inputs also receive dummy values',
      (tester) async {
    final form = DummyForm([
      for (final name in ['hidden', 'disabled', 'readOnly'])
        InputEntity<String>.pure(field: name),
    ]);
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      enabled: false,
      declarations: [
        Field.text('hidden', hidden: true, dummyValue: 'Hidden sample'),
        Field.text('disabled', enabled: false, dummyValue: 'Disabled sample'),
        Field.text('readOnly', readOnly: true, dummyValue: 'Read-only sample'),
      ],
    )));
    expect(form.values, {
      'hidden': 'Hidden sample',
      'disabled': 'Disabled sample',
      'readOnly': 'Read-only sample',
    });
    expect(form.saves, 1);
    for (final entry in form.values.entries) {
      expect(form.formKey!.currentState!.fields[entry.key]!.value, entry.value);
    }
  });

  testWidgets('dummy values still follow model validators', (tester) async {
    final form = ExampleForm(maxLength: 3);
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(ExampleFormWidget(key: key, form: form)));
    expect(form.stringInput.value, 'Example');
    expect(form.validate(), isFalse);
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    expect(key.currentState!.errors, contains(form.stringInput.field));
  });

  testWidgets('no eligible values means no initialization save',
      (tester) async {
    final form = DummyForm([
      const InputEntity<String>.pure(field: 'name', value: 'Existing'),
    ]);
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      declarations: [Field.text('name', dummyValue: 'Sample')],
    )));
    expect(form.saves, 0);
    expect(form.inputs.single.isPure, isTrue);
    expect(form.formKey!.currentState!.fields['name']!.value, 'Existing');
    await tester.pumpWidget(const SizedBox());
    form.resetName();
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      declarations: [Field.text('name', dummyValue: 'New sample')],
    )));
    expect(form.values['name'], isNull);
    expect(form.saves, 0);
  });
}
