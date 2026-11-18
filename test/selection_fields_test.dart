import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/form_builder_z.dart';
import 'package:material_ui/material_ui.dart';

import 'form_widget_test.dart' show TestFormWidget, host;
import 'formatted_fields_test.dart' show FormattedForm;

const choices = [
  FormBuilderFieldOption(value: 1, child: Text('One')),
  FormBuilderFieldOption(value: 2, child: Text('Two')),
];

FormattedForm selectionForm({List<int>? checked, int? choice}) =>
    FormattedForm([
      InputEntity<List<int>>.pure(
        field: 'checked',
        value: checked,
        validators: const [RequiredValidator(errorText: 'Check an option')],
      ),
      InputEntity<int>.pure(
        field: 'choice',
        value: choice,
        validators: const [RequiredValidator(errorText: 'Choose an option')],
      ),
    ]);

List<Object> fields({
  bool hidden = false,
  bool readOnly = false,
  bool enabled = true,
  bool dummy = false,
}) => [
  Field.checkboxGroup<int>(
    'checked',
    options: choices,
    hidden: hidden,
    readOnly: readOnly,
    enabled: enabled,
    dummyValue: dummy ? [2] : null,
  ),
  Field.choiceChips<int>(
    'choice',
    options: choices,
    hidden: hidden,
    readOnly: readOnly,
    enabled: enabled,
    dummyValue: dummy ? 2 : null,
  ),
];

Future<void> tapOption(WidgetTester tester, String name, String label) async {
  final finder = find.descendant(
    of: find.byKey(ValueKey(name)),
    matching: find.text(label),
  );
  await tester.ensureVisible(finder);
  await tester.tap(finder);
  await tester.pump();
}

void main() {
  testWidgets('new selection fields mount pure and validate null values', (
    tester,
  ) async {
    final form = selectionForm();
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(
      host(TestFormWidget(key: key, form: form, declarations: fields())),
    );
    expect(find.byType(FormBuilderCheckboxGroup<int>), findsOneWidget);
    expect(find.byType(FormBuilderChoiceChips<int>), findsOneWidget);
    expect(form.inputs.every((input) => input.isPure), isTrue);
    expect(form.saves, 0);
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    expect(key.currentState!.errors, {
      'checked': 'Check an option',
      'choice': 'Choose an option',
    });
  });

  testWidgets('selection and deselection save typed values in complete maps', (
    tester,
  ) async {
    final form = selectionForm();
    final changes = <String, dynamic>{};
    await tester.pumpWidget(
      host(
        TestFormWidget(
          form: form,
          declarations: fields(),
          onChanged: (name, value) => changes[name] = value,
        ),
      ),
    );
    await tapOption(tester, 'checked', 'One');
    await tapOption(tester, 'checked', 'Two');
    expect(form.values, {
      'checked': [1, 2],
      'choice': null,
    });
    expect(changes['checked'], [1, 2]);
    await tapOption(tester, 'choice', 'One');
    await tapOption(tester, 'choice', 'Two');
    expect(form.values, {
      'checked': [1, 2],
      'choice': 2,
    });
    expect(changes['choice'], 2);
    await tapOption(tester, 'choice', 'Two');
    expect(form.values['choice'], isNull);
    await tapOption(tester, 'checked', 'One');
    await tapOption(tester, 'checked', 'Two');
    expect(form.values['checked'], isEmpty);
    expect(form.saves, 7);
    expect(form.inputs.every((input) => input.isPure), isFalse);
  });

  testWidgets('initial and external values synchronize without extra saves', (
    tester,
  ) async {
    final form = selectionForm(checked: [1], choice: 2);
    Widget view() => host(TestFormWidget(form: form, declarations: fields()));
    await tester.pumpWidget(view());
    expect(form.formKey!.currentState!.fields['checked']!.value, [1]);
    expect(form.formKey!.currentState!.fields['choice']!.value, 2);
    expect(form.saves, 0);
    form.save({
      'checked': <int>[2],
      'choice': 1,
    });
    await tester.pumpWidget(view());
    await tester.pump();
    expect(form.formKey!.currentState!.fields['checked']!.value, [2]);
    expect(form.formKey!.currentState!.fields['choice']!.value, 1);
    final chip = tester.widget<ChoiceChip>(
      find.descendant(
        of: find.byKey(const ValueKey('choice')),
        matching: find.widgetWithText(ChoiceChip, 'One'),
      ),
    );
    expect(chip.selected, isTrue);
    expect(form.saves, 1);
  });

  testWidgets('read-only and disabled selection fields reject user edits', (
    tester,
  ) async {
    final form = selectionForm(checked: [1], choice: 2);
    for (final definitions in [
      fields(readOnly: true),
      fields(enabled: false),
    ]) {
      await tester.pumpWidget(
        host(TestFormWidget(form: form, declarations: definitions)),
      );
      final group = tester.widget<FormBuilderCheckboxGroup<int>>(
        find.byType(FormBuilderCheckboxGroup<int>),
      );
      final chips = tester.widget<FormBuilderChoiceChips<int>>(
        find.byType(FormBuilderChoiceChips<int>),
      );
      expect(group.enabled, isFalse);
      expect(chips.enabled, isFalse);
      await tester.tap(
        find.descendant(
          of: find.byKey(const ValueKey('checked')),
          matching: find.text('Two'),
        ),
        warnIfMissed: false,
      );
      await tester.tap(
        find.descendant(
          of: find.byKey(const ValueKey('choice')),
          matching: find.text('One'),
        ),
        warnIfMissed: false,
      );
      await tester.pump();
      expect(form.values, {
        'checked': [1],
        'choice': 2,
      });
      expect(form.saves, 0);
    }
  });

  testWidgets('hidden controls retain values and skip required validation', (
    tester,
  ) async {
    final form = selectionForm();
    final key = GlobalKey<FormWidgetState>();
    Widget view(bool hidden) => host(
      TestFormWidget(
        key: key,
        form: form,
        declarations: fields(hidden: hidden),
      ),
    );
    await tester.pumpWidget(view(true));
    expect(find.byType(FormBuilderChoiceChips<int>), findsNothing);
    expect(form.formKey!.currentState!.fields.length, 2);
    expect(key.currentState!.saveAndValidate(), isTrue);
    await tester.pumpWidget(view(false));
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    await tapOption(tester, 'checked', 'Two');
    await tapOption(tester, 'choice', 'One');
    await tester.pumpWidget(view(true));
    expect(key.currentState!.saveAndValidate(), isTrue);
    expect(form.values, {
      'checked': [2],
      'choice': 1,
    });
    await tester.pumpWidget(view(false));
    expect(form.formKey!.currentState!.fields['checked']!.value, [2]);
    expect(form.formKey!.currentState!.fields['choice']!.value, 1);
  });

  testWidgets('debug dummy values seed the new controls once', (tester) async {
    final form = selectionForm();
    Widget view() => host(
      TestFormWidget(
        form: form,
        declarations: fields(dummy: true, readOnly: true, hidden: true),
      ),
    );
    await tester.pumpWidget(view());
    expect(form.values, {
      'checked': [2],
      'choice': 2,
    });
    expect(form.saves, 1);
    form.save({'checked': <int>[], 'choice': null});
    await tester.pumpWidget(view());
    await tester.pump();
    expect(form.values, {'checked': <int>[], 'choice': null});
    expect(form.saves, 2);
  });

  testWidgets(
    'factory options and layout configuration reach native controls',
    (tester) async {
      final source = [...choices];
      final declarations = [
        Field.checkboxGroup<int>(
          'checked',
          options: source,
          orientation: OptionsOrientation.vertical,
          spacing: 3,
          runSpacing: 4,
        ),
        Field.choiceChips<int>(
          'choice',
          options: source,
          spacing: 5,
          runSpacing: 6,
        ),
      ];
      source.clear();
      await tester.pumpWidget(
        host(TestFormWidget(form: selectionForm(), declarations: declarations)),
      );
      final group = tester.widget<FormBuilderCheckboxGroup<int>>(
        find.byType(FormBuilderCheckboxGroup<int>),
      );
      final chips = tester.widget<FormBuilderChoiceChips<int>>(
        find.byType(FormBuilderChoiceChips<int>),
      );
      expect(group.options.length, 2);
      expect(chips.options.length, 2);
      expect(group.orientation, OptionsOrientation.vertical);
      expect(group.wrapSpacing, 3);
      expect(group.wrapRunSpacing, 4);
      expect(chips.spacing, 5);
      expect(chips.runSpacing, 6);
    },
  );

  testWidgets('latest model validators run after selection changes', (
    tester,
  ) async {
    final form = FormattedForm([
      const InputEntity<int>.pure(
        field: 'choice',
        validators: [EqualValidator(2, errorText: 'Choose two')],
      ),
    ]);
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(
      host(
        TestFormWidget(
          key: key,
          form: form,
          declarations: [Field.choiceChips<int>('choice', options: choices)],
        ),
      ),
    );
    await tapOption(tester, 'choice', 'One');
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    expect(key.currentState!.errors, {'choice': 'Choose two'});
    await tapOption(tester, 'choice', 'Two');
    expect(key.currentState!.saveAndValidate(), isTrue);
    await tester.pump();
    expect(key.currentState!.errors, isEmpty);
  });
}
