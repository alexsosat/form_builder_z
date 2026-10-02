import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_z/example/conditional_form.dart';
import 'package:form_builder_z/form_builder_z.dart';

import 'form_widget_test.dart' show LegacyForm, TestFormWidget, host, enter;

class TrackingForm extends ConditionalForm {
  TrackingForm({super.formKey});
  int saves = 0;
  Map<String, dynamic>? lastSave;

  @override
  void save(Map<String, dynamic> fields) {
    saves++;
    lastSave = Map.of(fields);
    super.save(fields);
  }
}

Future<void> toggle(WidgetTester tester) async {
  final checkbox = find.byType(Checkbox);
  await tester.ensureVisible(checkbox);
  await tester.tap(checkbox);
  await tester.pump();
}

void main() {
  testWidgets(
      'initial hidden inputs stay pure and registered but do not block submit',
      (tester) async {
    final formKey = GlobalKey<FormBuilderState>();
    final form = TrackingForm(formKey: formKey);
    final key = GlobalKey<FormWidgetState>();
    Map<String, dynamic>? submitted;
    await tester.pumpWidget(host(ConditionalFormWidget(
      key: key,
      form: form,
      onSubmit: (values) {
        submitted = values;
      },
    )));
    expect(form.isPure, isTrue);
    expect(form.saves, 0);
    expect(find.byKey(const ValueKey('details')), findsNothing);
    expect(find.byKey(const ValueKey('details'), skipOffstage: false),
        findsOneWidget);
    expect(formKey.currentState!.fields.keys,
        unorderedEquals(['hasDetails', 'details', 'amount']));
    expect(form.validate(), isFalse);
    expect(key.currentState!.errors, isEmpty);
    expect(key.currentState!.saveAndValidate(), isTrue);
    await tester.pump();
    await tester.tap(find.text('Submit'));
    await tester.pump();
    expect(submitted, {'hasDetails': false, 'details': null, 'amount': null});
    expect(form.lastSave, submitted);
  });

  testWidgets(
      'edits automatically show dependencies and hidden errors return when shown',
      (tester) async {
    final form = TrackingForm();
    final key = GlobalKey<FormWidgetState>();
    final failures = <Map<String, String>>[];
    await tester.pumpWidget(host(ConditionalFormWidget(
      key: key,
      form: form,
      onFailure: failures.add,
    )));
    await toggle(tester);
    expect(find.byKey(const ValueKey('details')), findsOneWidget);
    expect(find.byKey(const ValueKey('amount')), findsOneWidget);
    expect(key.currentState!.saveAndValidate(), isFalse);
    expect(failures.single, {'details': 'Details are required'});
    await tester.pump();
    await toggle(tester);
    expect(find.byKey(const ValueKey('details')), findsNothing);
    expect(key.currentState!.errors, isEmpty);
    expect(key.currentState!.saveAndValidate(), isTrue);
    await tester.pump();
    await toggle(tester);
    expect(key.currentState!.saveAndValidate(), isFalse);
  });

  testWidgets(
      'hiding preserves accepted values, malformed drafts, and submission data',
      (tester) async {
    final formKey = GlobalKey<FormBuilderState>();
    final form = TrackingForm(formKey: formKey);
    final key = GlobalKey<FormWidgetState>();
    Map<String, dynamic>? submitted;
    await tester.pumpWidget(host(ConditionalFormWidget(
      key: key,
      form: form,
      onSubmit: (values) {
        submitted = values;
      },
    )));
    await toggle(tester);
    await enter(tester, 'details', 'Retained');
    await enter(tester, 'amount', '4.5');
    await enter(tester, 'amount', 'not a number');
    final amountState = formKey.currentState!.fields['amount'];
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    await toggle(tester);
    expect(form.amount.value, 4.5);
    expect(form.details.value, 'Retained');
    expect(formKey.currentState!.fields['amount'], same(amountState));
    expect(amountState!.value, 'not a number');
    await tester.tap(find.text('Submit'));
    await tester.pump();
    expect(
        submitted, {'hasDetails': false, 'details': 'Retained', 'amount': 4.5});
    for (var i = 0; i < 2; i++) {
      await toggle(tester);
      expect(find.text('not a number'), findsOneWidget);
      expect(formKey.currentState!.fields['amount'], same(amountState));
      expect(key.currentState!.saveAndValidate(), isFalse);
      await tester.pump();
      await toggle(tester);
      expect(key.currentState!.saveAndValidate(), isTrue);
      await tester.pump();
    }
    await toggle(tester);
    await enter(tester, 'amount', '7');
    expect(key.currentState!.saveAndValidate(), isTrue);
  });

  testWidgets('hiding removes focus and visible layout gaps', (tester) async {
    final formKey = GlobalKey<FormBuilderState>();
    final form = TrackingForm(formKey: formKey);
    Widget page() => host(ConditionalFormWidget(form: form));
    await tester.pumpWidget(page());
    final initialHeight =
        tester.getSize(find.byType(ConditionalFormWidget)).height;
    await toggle(tester);
    await enter(tester, 'details', 'Focus');
    final node = formKey.currentState!.fields['details']!.effectiveFocusNode;
    expect(node.hasFocus, isTrue);
    form.save({...form.values, 'hasDetails': false});
    final saves = form.saves;
    await tester.pumpWidget(page());
    await tester.pump();
    expect(node.hasFocus, isFalse);
    expect(form.saves, saves);
    expect(find.text('These values are retained when details are hidden.'),
        findsNothing);
    expect(find.byType(Row), findsNothing);
    expect(tester.getSize(find.byType(ConditionalFormWidget)).height,
        initialHeight);
  });

  testWidgets('external updates synchronize hidden and read-only inputs',
      (tester) async {
    final form = TrackingForm();
    Widget page(bool locked) =>
        host(ConditionalFormWidget(form: form, locked: locked));
    await tester.pumpWidget(page(false));
    form.save({...form.values, 'details': 'Updated hidden', 'amount': 8.0});
    final saves = form.saves;
    await tester.pumpWidget(page(true));
    await tester.pump();
    expect(form.saves, saves);
    await toggle(tester);
    expect(find.text('Updated hidden'), findsOneWidget);
    expect(find.text('8.0'), findsOneWidget);
    final field = tester
        .widget<FormBuilderTextField>(find.byKey(const ValueKey('details')));
    expect(field.readOnly, isTrue);
    expect(field.enabled, isTrue);
    form.save({...form.values, 'details': 'Updated locked'});
    await tester.pumpWidget(page(true));
    await tester.pump();
    expect(find.text('Updated locked'), findsOneWidget);
    await tester.pumpWidget(page(false));
    await enter(tester, 'details', 'Editable');
    expect(form.details.value, 'Editable');
  });

  testWidgets(
      'custom layouts receive only visible items while hidden fields stay registered',
      (tester) async {
    final form = TrackingForm();
    final key = GlobalKey<FormWidgetState>();
    final itemCounts = <int>[];
    await tester.pumpWidget(host(ConditionalFormWidget(
      key: key,
      form: form,
      layoutBuilder: (context, children) {
        itemCounts.add(children.length);
        return Column(children: children);
      },
    )));
    expect(itemCounts.last, 1);
    expect(key.currentState!.saveAndValidate(), isTrue);
    await tester.pump();
    await toggle(tester);
    expect(itemCounts.last, 3);
    expect(find.byKey(const ValueKey('details')), findsOneWidget);
    await enter(tester, 'details', 'Valid');
    expect(key.currentState!.saveAndValidate(), isTrue);
    await tester.pump();
    await toggle(tester);
    expect(itemCounts.last, 1);
    expect(key.currentState!.saveAndValidate(), isTrue);
    expect(form.details.value, 'Valid');
  });

  testWidgets('validation evaluates visibility before the next rendered frame',
      (tester) async {
    final formKey = GlobalKey<FormBuilderState>();
    final form = TrackingForm(formKey: formKey);
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(ConditionalFormWidget(key: key, form: form)));
    formKey.currentState!.fields['hasDetails']!.didChange(true);
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    formKey.currentState!.fields['hasDetails']!.didChange(false);
    expect(key.currentState!.saveAndValidate(), isTrue);
    expect(key.currentState!.errors, isEmpty);
    await tester.pump();
  });

  testWidgets('read-only required inputs still validate and accept selection',
      (tester) async {
    final form = TrackingForm();
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(
        host(ConditionalFormWidget(key: key, form: form, locked: true)));
    await toggle(tester);
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    final field = find.byKey(const ValueKey('details'));
    await tester.tap(field);
    await tester.pump();
    final editable = tester.widget<EditableText>(
        find.descendant(of: field, matching: find.byType(EditableText)));
    expect(editable.readOnly, isTrue);
    expect(editable.enableInteractiveSelection, isTrue);
    expect(tester.testTextInput.isVisible, isFalse);
  });

  testWidgets('partially hidden rows resize and collapsed rows add no space',
      (tester) async {
    final form = TrackingForm();
    var hideDetails = false;
    var hideAmount = false;
    Widget page() => host(TestFormWidget(
        form: form,
        declarations: [
          Field.checkbox('hasDetails'),
          [
            Field.text('details', hidden: hideDetails),
            Field.number('amount', hidden: hideAmount)
          ],
          Field.widget(
              child: const SizedBox(height: 10, key: ValueKey('content'))),
        ],
        mainAxisSpacing: 20,
        crossAxisSpacing: 12));
    await tester.pumpWidget(page());
    final originalWidth =
        tester.getSize(find.byKey(const ValueKey('details'))).width;
    hideAmount = true;
    await tester.pumpWidget(page());
    expect(tester.getSize(find.byKey(const ValueKey('details'))).width,
        closeTo(originalWidth * 2 + 12, 0.01));
    hideDetails = true;
    await tester.pumpWidget(page());
    final checkbox = tester.getRect(find.byKey(const ValueKey('hasDetails')));
    final content = tester.getRect(find.byKey(const ValueKey('content')));
    expect(content.top - checkbox.bottom, closeTo(20, 0.01));
  });

  testWidgets(
      'read-only non-text controls reject pointer and keyboard interaction',
      (tester) async {
    final form = LegacyForm(name: 'Valid');
    var locked = true;
    List<Object> fields() => [
          Field.text('name'),
          Field.number('number', readOnly: locked),
          Field.checkbox('checkbox', readOnly: locked),
          Field.date('date', readOnly: locked),
          Field.dateRange('range',
              firstDate: DateTime(2020),
              lastDate: DateTime(2030),
              readOnly: locked),
          Field.dropdown<int>('choice',
              items: const [DropdownMenuItem(value: 1, child: Text('One'))],
              readOnly: locked),
          Field.builder('file',
              readOnly: locked,
              builder: (context, state) => TextButton(
                    onPressed: state.enabled
                        ? () => throw StateError('Read-only callback ran')
                        : null,
                    child: const Text('Custom control'),
                  )),
          Field.widget(
              readOnly: locked,
              child: TextButton(
                onPressed: () => throw StateError('Embedded callback ran'),
                child: const Text('Embedded control'),
              )),
        ];
    Widget page() => host(TestFormWidget(form: form, declarations: fields()));
    await tester.pumpWidget(page());
    for (final name in ['checkbox', 'date', 'range', 'choice']) {
      final control = find.byKey(ValueKey(name));
      await tester.ensureVisible(control);
      await tester.tap(control, warnIfMissed: false);
      await tester.pump();
    }
    for (final text in ['Custom control', 'Embedded control']) {
      final control = find.text(text);
      await tester.ensureVisible(control);
      await tester.tap(control, warnIfMissed: false);
      await tester.pump();
    }
    await tester.sendKeyEvent(LogicalKeyboardKey.space);
    await tester.pump();
    expect(form.checkbox.value, isFalse);
    expect(form.date.value, isNull);
    expect(form.range.value, isNull);
    expect(form.choice.value, isNull);
    expect(find.byType(DatePickerDialog), findsNothing);
    expect(tester.takeException(), isNull);
    locked = false;
    await tester.pumpWidget(page());
    final control = find.byType(Checkbox);
    await tester.ensureVisible(control);
    await tester.tap(control);
    await tester.pump();
    expect(form.checkbox.value, isTrue);
  });
}
