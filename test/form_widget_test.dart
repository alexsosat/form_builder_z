import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/example/example_form.dart';
import 'package:form_builder_z/example/example_form_widget.dart';
import 'package:form_builder_z/form_builder_z.dart';

// This deliberately retains the previous inputs/save subclass API.
class LegacyForm extends FormEntity {
  LegacyForm({String? name, super.formKey})
      : nameInput = InputEntity<String>.pure(
          field: 'name',
          value: name,
          validators: const [RequiredValidator(errorText: 'Name required')],
        );

  InputEntity<String> nameInput;
  DoubleInput number = const DoubleInput.pure(field: 'number', validators: []);
  BoolInput checkbox = const BoolInput.pure(field: 'checkbox');
  DateTimeInput date = const DateTimeInput.pure(field: 'date', validators: []);
  DateTimeRangeInput range = const DateTimeRangeInput.pure(field: 'range');
  InputEntity<int> choice = const InputEntity<int>.pure(field: 'choice');
  Uint8ListInput file = const Uint8ListInput.pure(field: 'file');
  int saves = 0;
  Map<String, dynamic>? lastSave;

  @override
  List<InputEntity> get inputs =>
      [nameInput, number, checkbox, date, range, choice, file];

  @override
  void save(Map<String, dynamic> fields) {
    saves++;
    lastSave = Map.of(fields);
    nameInput = nameInput.dirty(value: fields['name'] as String?);
    number = number.dirty(value: fields['number'] as double?);
    checkbox = checkbox.dirty(value: fields['checkbox'] as bool?);
    date = date.dirty(value: fields['date'] as DateTime?);
    range = range.dirty(value: fields['range'] as DateTimeRange?);
    choice = choice.dirty(value: fields['choice'] as int?);
    file = file.dirty(value: fields['file'] as Uint8List?);
  }
}

class TextPresentationForm extends FormEntity {
  TextPresentationForm()
      : _inputs = [
          for (final name in ['User Email', 'password', 'bio', 'plain'])
            InputEntity<String>.pure(field: name),
        ];

  List<InputEntity<String>> _inputs;

  @override
  List<InputEntity> get inputs => _inputs;

  @override
  void save(Map<String, dynamic> values) {
    _inputs = [
      for (final input in _inputs)
        input.dirty(value: values[input.field] as String?)
    ];
  }
}

List<Object> definitions() => [
      Field.text(
        'name',
        decoration: const InputDecoration(labelText: 'Name'),
      ),
      Field.number(
        'number',
        decoration: const InputDecoration(labelText: 'Number'),
      ),
      Field.checkbox('checkbox', title: const Text('Agree')),
      Field.date('date'),
      Field.dateRange(
        'range',
        firstDate: DateTime(2020),
        lastDate: DateTime(2030),
      ),
      Field.dropdown<int>('choice', items: const [
        DropdownMenuItem(value: 1, child: Text('One')),
        DropdownMenuItem(value: 2, child: Text('Two')),
      ]),
      Field.builder<Uint8List>(
        'file',
        builder: (context, state) => TextButton(
          onPressed: state.enabled
              ? () => state.didChange(Uint8List.fromList([1, 2]))
              : null,
          child: const Text('Choose file'),
        ),
      ),
    ];

class TestFormWidget extends FormWidget {
  const TestFormWidget({
    super.key,
    required super.form,
    required this.declarations,
    super.layoutBuilder,
    super.onSubmit,
    super.onFailure,
    super.onChanged,
    super.submitButtonBuilder,
    super.enabled,
    super.useDummyValues,
    super.header,
    super.footer,
    super.mainAxisSpacing,
    super.crossAxisSpacing,
  });

  final List<Object> declarations;

  @override
  List<Object> fields() => declarations;
}

Widget host(Widget child) => MaterialApp(
      home: Scaffold(body: SingleChildScrollView(child: child)),
    );

Future<void> enter(WidgetTester tester, String name, String value) async {
  final field = find.byKey(ValueKey(name));
  await tester.ensureVisible(field);
  await tester.enterText(field, value);
  await tester.pump();
}

void main() {
  testWidgets('generates all fields and preserves pure initial inputs',
      (tester) async {
    final form = LegacyForm(name: 'Initial');
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: form,
      declarations: definitions(),
    )));
    expect(find.byType(FormBuilder), findsOneWidget);
    expect(find.byType(FormBuilderTextField), findsNWidgets(2));
    expect(find.byType(FormBuilderCheckbox), findsOneWidget);
    expect(find.byType(FormBuilderDateTimePicker), findsOneWidget);
    expect(find.byType(FormBuilderDateRangePicker), findsOneWidget);
    expect(find.byType(FormBuilderDropdown<int>), findsOneWidget);
    expect(find.byType(FormBuilderField<Uint8List>), findsOneWidget);
    expect(form.isPure, isTrue);
    expect(form.saves, 0);
    expect(find.text('Initial'), findsOneWidget);
    expect(key.currentState!.saveAndValidate(), isTrue);
    expect(form.lastSave!.keys, unorderedEquals(form.values.keys));
  });

  testWidgets('edits save a complete typed map and retain other values',
      (tester) async {
    final form = LegacyForm(name: 'Initial');
    final formKey = GlobalKey<FormBuilderState>();
    // Use the previous externally supplied form key contract.
    final keyed = LegacyForm(name: 'Initial', formKey: formKey);
    await tester.pumpWidget(host(TestFormWidget(
      form: keyed,
      declarations: definitions(),
    )));
    await enter(tester, 'name', 'Edited');
    expect(keyed.nameInput.value, 'Edited');
    expect(keyed.nameInput.isPure, isFalse);
    expect(keyed.lastSave!.length, 7);
    await enter(tester, 'number', '12.5');
    expect(keyed.number.value, 12.5);
    final date = DateTime(2026, 5, 1);
    final range = DateTimeRange(start: date, end: DateTime(2026, 5, 4));
    formKey.currentState!.fields['date']!.didChange(date);
    formKey.currentState!.fields['range']!.didChange(range);
    formKey.currentState!.fields['choice']!.didChange(2);
    formKey.currentState!.fields['checkbox']!.didChange(true);
    await tester.pump();
    expect(keyed.date.value, date);
    expect(keyed.range.value, range);
    expect(keyed.choice.value, 2);
    expect(keyed.checkbox.value, isTrue);
    final pick = find.text('Choose file');
    await tester.ensureVisible(pick);
    await tester.tap(pick);
    await tester.pump();
    expect(keyed.file.value, orderedEquals([1, 2]));
    expect(keyed.nameInput.value, 'Edited');
    expect(form.saves, 0);
  });

  testWidgets('numeric drafts block widget validation and clear when corrected',
      (tester) async {
    final form = LegacyForm(name: 'Valid');
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: form,
      declarations: definitions(),
    )));
    await enter(tester, 'number', '4.5');
    await enter(tester, 'number', 'invalid');
    expect(form.number.value, 4.5);
    expect(form.isValid, isTrue);
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    expect(find.text('Enter a valid number'), findsOneWidget);
    await enter(tester, 'number', '6');
    expect(form.number.value, 6.0);
    expect(find.text('Enter a valid number'), findsNothing);
    expect(key.currentState!.saveAndValidate(), isTrue);
    await enter(tester, 'number', '');
    expect(form.number.value, isNull);
    expect(key.currentState!.saveAndValidate(), isTrue);
  });

  testWidgets('validators resolve replaced inputs and clear submit errors',
      (tester) async {
    final form = ExampleForm(maxLength: 3);
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(
        host(ExampleFormWidget(useDummyValues: false, key: key, form: form)));
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    await enter(tester, 'text', 'abcd');
    expect(key.currentState!.saveAndValidate(), isFalse);
    await enter(tester, 'text', 'abc');
    expect(key.currentState!.saveAndValidate(), isTrue);
    form.stringInput = form.stringInput.dirty(
      value: 'abc',
      validators: const [MaxLengthValidator(2, errorText: 'New rule')],
    );
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    expect(find.text('New rule'), findsOneWidget);
  });

  testWidgets('rebuilds preserve drafts and synchronize changed model values',
      (tester) async {
    final form = LegacyForm(name: 'Initial');
    final key = GlobalKey<FormWidgetState>();
    Widget page() =>
        host(TestFormWidget(key: key, form: form, declarations: definitions()));
    await tester.pumpWidget(page());
    await enter(tester, 'number', 'bad draft');
    final before = form.saves;
    await tester.pumpWidget(page());
    await tester.pump();
    expect(find.text('bad draft'), findsOneWidget);
    expect(form.saves, before);
    form.save({...form.values, 'name': 'External', 'number': 9.0});
    final after = form.saves;
    await tester.pumpWidget(page());
    await tester.pump();
    expect(find.text('External'), findsOneWidget);
    expect(find.text('9.0'), findsOneWidget);
    expect(form.saves, after);
  });

  testWidgets('custom layout and button receive fields and submit state',
      (tester) async {
    final form = ExampleForm();
    var submissions = 0;
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      declarations: [
        Field.text(
          'text',
        )
      ],
      layoutBuilder: (context, fields) =>
          Row(children: [Expanded(child: fields.single)]),
      onSubmit: (_) {
        submissions++;
      },
      submitButtonBuilder: (context, submit, busy) => TextButton(
        onPressed: submit,
        child: Text(busy ? 'Working' : 'Send'),
      ),
    )));
    await tester.tap(find.text('Send'));
    await tester.pump();
    expect(submissions, 0);
    await enter(tester, 'text', 'Valid');
    await tester.tap(find.text('Send'));
    await tester.pump();
    expect(submissions, 1);
  });

  testWidgets('async submission uses a snapshot and prevents duplicate taps',
      (tester) async {
    final form = ExampleForm();
    final pending = Completer<void>();
    final key = GlobalKey<FormWidgetState>();
    var submissions = 0;
    Map<String, dynamic>? submitted;
    await tester.pumpWidget(host(ExampleFormWidget(
      useDummyValues: false,
      key: key,
      form: form,
      onSubmit: (values) {
        submissions++;
        submitted = values;
        return pending.future;
      },
    )));
    await enter(tester, 'text', 'First');
    await tester.tap(find.text('Submit'));
    await tester.pump();
    expect(key.currentState!.isSubmitting, isTrue);
    expect(tester.widget<ElevatedButton>(find.byType(ElevatedButton)).onPressed,
        isNull);
    await enter(tester, 'text', 'Second');
    expect(submissions, 1);
    expect(submitted, {'text': 'First'});
    pending.complete();
    await tester.pump();
    expect(key.currentState!.isSubmitting, isFalse);
  });

  testWidgets('submission failure reports error and restores button',
      (tester) async {
    final form = ExampleForm();
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(ExampleFormWidget(
      useDummyValues: false,
      key: key,
      form: form,
      onSubmit: (_) async {
        throw StateError('save failed');
      },
    )));
    await enter(tester, 'text', 'Valid');
    await tester.tap(find.text('Submit'));
    await tester.pump();
    expect(tester.takeException(), isA<StateError>());
    expect(key.currentState!.isSubmitting, isFalse);
    expect(tester.widget<ElevatedButton>(find.byType(ElevatedButton)).onPressed,
        isNotNull);
  });

  testWidgets('disabled forms do not accept edits or submission',
      (tester) async {
    final form = ExampleForm();
    await tester.pumpWidget(host(ExampleFormWidget(
      useDummyValues: false,
      form: form,
      enabled: false,
      onSubmit: (_) {},
    )));
    expect(
        tester
            .widget<FormBuilderTextField>(find.byType(FormBuilderTextField))
            .enabled,
        isFalse);
    expect(tester.widget<ElevatedButton>(find.byType(ElevatedButton)).onPressed,
        isNull);
    expect(form.isPure, isTrue);
  });

  testWidgets('switching forms discards old drafts and releases old ownership',
      (tester) async {
    final first = ExampleForm();
    final second = ExampleForm(
        stringInput:
            const InputEntity<String>.pure(field: 'text', value: 'Second'));
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(
        host(ExampleFormWidget(useDummyValues: false, key: key, form: first)));
    await enter(tester, 'text', 'First');
    await tester.pumpWidget(
        host(ExampleFormWidget(useDummyValues: false, key: key, form: second)));
    expect(find.text('Second'), findsOneWidget);
    await tester.pumpWidget(
        host(ExampleFormWidget(useDummyValues: false, form: first)));
    expect(find.text('First'), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
    await tester.pumpWidget(
        host(ExampleFormWidget(useDummyValues: false, form: first)));
    expect(tester.takeException(), isNull);
  });

  testWidgets('missing layout fields prevent validation', (tester) async {
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: ExampleForm(),
      declarations: [
        Field.text(
          'text',
        )
      ],
      layoutBuilder: (_, fields) => const SizedBox(),
    )));
    expect(() => key.currentState!.saveAndValidate(), throwsStateError);
  });

  testWidgets('old submissions cannot unlock a newly mounted form',
      (tester) async {
    final first = ExampleForm();
    final second = ExampleForm();
    final oldPending = Completer<void>();
    final newPending = Completer<void>();
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(ExampleFormWidget(
      useDummyValues: false,
      key: key,
      form: first,
      onSubmit: (_) => oldPending.future,
    )));
    await enter(tester, 'text', 'First');
    await tester.tap(find.text('Submit'));
    await tester.pump();
    await tester.pumpWidget(host(ExampleFormWidget(
      useDummyValues: false,
      key: key,
      form: second,
      onSubmit: (_) => newPending.future,
    )));
    await enter(tester, 'text', 'Second');
    await tester.tap(find.text('Submit'));
    await tester.pump();
    oldPending.complete();
    await tester.pump();
    expect(key.currentState!.isSubmitting, isTrue);
    await tester.pumpWidget(const SizedBox());
    newPending.complete();
    await tester.pump();
    expect(tester.takeException(), isNull);
  });

  testWidgets('rows have equal widths and embedded widgets add no values',
      (tester) async {
    final form = LegacyForm(name: 'Initial');
    final key = GlobalKey<FormWidgetState>();
    List<Object> layout() {
      final fields = definitions();
      return [
        [fields[0], fields[1]],
        Field.widget(child: const Divider(key: ValueKey('divider'))),
        ...fields.skip(2),
      ];
    }

    Widget page() => host(TestFormWidget(
          key: key,
          form: form,
          declarations: layout(),
          header: const Text('Header'),
          footer: const Text('Footer'),
          mainAxisSpacing: 20,
          crossAxisSpacing: 12,
        ));
    await tester.pumpWidget(page());
    final nameRect = tester.getRect(find.byKey(const ValueKey('name')));
    final numberRect = tester.getRect(find.byKey(const ValueKey('number')));
    expect(nameRect.top, numberRect.top);
    expect(nameRect.width, closeTo(numberRect.width, 0.01));
    expect(numberRect.left - nameRect.right, closeTo(12, 0.01));
    final dividerRect = tester.getRect(find.byKey(const ValueKey('divider')));
    expect(dividerRect.top - nameRect.bottom, closeTo(20, 0.01));
    expect(find.text('Header'), findsOneWidget);
    expect(find.text('Footer'), findsOneWidget);
    await enter(tester, 'name', 'Changed');
    await tester.pumpWidget(page());
    expect(find.text('Changed'), findsOneWidget);
    expect(key.currentState!.saveAndValidate(), isTrue);
    expect(
        form.values.keys,
        unorderedEquals([
          'name',
          'number',
          'checkbox',
          'date',
          'range',
          'choice',
          'file',
        ]));
  });

  testWidgets('text factories configure presentation and keep exact model keys',
      (tester) async {
    final form = TextPresentationForm();
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: form,
      declarations: [
        Field.email('User Email', label: 'Email address'),
        Field.password('password'),
        Field.textArea('bio', maxLines: 3),
        Field.text('plain',
            decoration: const InputDecoration(labelText: 'Custom label')),
      ],
    )));
    final email = tester
        .widget<FormBuilderTextField>(find.byKey(const ValueKey('User Email')));
    final password = tester
        .widget<FormBuilderTextField>(find.byKey(const ValueKey('password')));
    final bio =
        tester.widget<FormBuilderTextField>(find.byKey(const ValueKey('bio')));
    expect(email.keyboardType, TextInputType.emailAddress);
    expect(email.decoration.labelText, 'Email address');
    expect(password.obscureText, isTrue);
    expect(bio.keyboardType, TextInputType.multiline);
    expect(bio.maxLines, 3);
    expect(
        tester
            .widget<FormBuilderTextField>(find.byKey(const ValueKey('plain')))
            .decoration
            .labelText,
        'Custom label');
    // Factories do not inject validators into the existing model.
    await enter(tester, 'User Email', 'not an email');
    expect(key.currentState!.saveAndValidate(), isTrue);
    expect(form.values['User Email'], 'not an email');
    expect(form.values, isNot(contains('user_email')));
  });

  testWidgets('datetime factory retains bounds and model date values',
      (tester) async {
    final form = LegacyForm(name: 'Valid');
    final fields = definitions();
    final first = DateTime(2020);
    final last = DateTime(2030);
    fields[3] = Field.datetime('date', firstDate: first, lastDate: last);
    await tester
        .pumpWidget(host(TestFormWidget(form: form, declarations: fields)));
    final picker = tester.widget<FormBuilderDateTimePicker>(
        find.byType(FormBuilderDateTimePicker));
    expect(picker.inputType, InputType.both);
    expect(picker.firstDate, first);
    expect(picker.lastDate, last);
  });

  testWidgets(
      'callbacks report accepted typed changes and complete validation errors',
      (tester) async {
    final form = LegacyForm();
    final key = GlobalKey<FormWidgetState>();
    final changes = <(String, dynamic)>[];
    final failures = <Map<String, String>>[];
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: form,
      declarations: definitions(),
      onChanged: (name, value) {
        expect(form.values[name], value);
        expect(form.lastSave!.length, 7);
        changes.add((name, value));
      },
      onFailure: failures.add,
    )));
    await enter(tester, 'number', 'bad');
    expect(changes.last, ('number', null));
    expect(failures, isEmpty);
    expect(key.currentState!.saveAndValidate(), isFalse);
    expect(failures.single, {
      'name': 'Name required',
      'number': 'Enter a valid number',
    });
    expect(key.currentState!.errors, failures.single);
    expect(() => failures.single['extra'] = 'error', throwsUnsupportedError);
    await enter(tester, 'name', 'Valid');
    await enter(tester, 'number', '12.5');
    expect(changes.last, ('number', 12.5));
    expect(key.currentState!.saveAndValidate(), isTrue);
    expect(key.currentState!.errors, isEmpty);
    expect(failures, hasLength(1));
  });

  for (final layout in <List<Object>>[
    [const Text('Use Field.widget')],
    [<Field>[]],
    [
      [
        Field.text('text'),
        [Field.text('text')]
      ]
    ],
    [
      [Field.widget(child: const Divider())]
    ],
  ]) {
    testWidgets('rejects malformed field layout $layout', (tester) async {
      await tester.pumpWidget(
          host(TestFormWidget(form: ExampleForm(), declarations: layout)));
      expect(tester.takeException(), isA<ArgumentError>());
    });
  }

  testWidgets('rejects changing row structure while mounted', (tester) async {
    final form = ExampleForm();
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: form,
      declarations: [Field.text('text')],
    )));
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: form,
      declarations: [
        [Field.text('text')]
      ],
    )));
    expect(tester.takeException(), isA<ArgumentError>());
  });

  testWidgets('duplicate mounts are rejected', (tester) async {
    final form = ExampleForm();
    await tester.pumpWidget(host(Column(children: [
      ExampleFormWidget(useDummyValues: false, form: form),
      ExampleFormWidget(useDummyValues: false, form: form),
    ])));
    expect(tester.takeException(), isA<StateError>());
    await tester.pumpWidget(const SizedBox());
    await tester
        .pumpWidget(host(ExampleFormWidget(useDummyValues: false, form: form)));
    expect(tester.takeException(), isNull);
  });

  for (final fields in <List<Object>>[
    [],
    [
      Field.text(
        'missing',
      )
    ],
    [
      Field.number(
        'text',
      )
    ],
    [
      Field.text(
        'text',
      ),
      Field.text(
        'text',
      )
    ],
  ]) {
    testWidgets('rejects invalid definitions $fields', (tester) async {
      await tester.pumpWidget(
          host(TestFormWidget(form: ExampleForm(), declarations: fields)));
      expect(tester.takeException(), isA<ArgumentError>());
    });
  }
}
