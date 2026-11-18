import 'package:material_ui/material_ui.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/form_builder_z.dart';

import 'form_widget_test.dart' show TestFormWidget, host, enter;
import 'formatted_fields_test.dart' show FormattedForm;

Finder currencyInput() => find.byWidgetPredicate(
    (widget) => widget is FormBuilderTextField && widget.name == 'price');

Future<void> openCalculator(WidgetTester tester) async {
  await tester.tap(currencyInput());
  await tester.pumpAndSettle();
  expect(find.byType(SimpleCalculator), findsOneWidget);
}

Future<void> press(WidgetTester tester, String key) async {
  await tester.tap(find
      .descendant(of: find.byType(SimpleCalculator), matching: find.text(key))
      .last);
  await tester.pump();
}

Future<void> done(WidgetTester tester) async {
  await tester.tap(find.widgetWithText(TextButton, 'Done'));
  await tester.pumpAndSettle();
}

FormattedForm priceForm([double? value]) => FormattedForm([
      InputEntity<double>.pure(field: 'price', value: value, validators: const [
        RequiredValidator(errorText: 'Price required'),
      ]),
    ]);

Widget page(FormattedForm form,
        {bool showCalculator = true,
        bool hidden = false,
        bool readOnly = false,
        bool enabled = true,
        bool formEnabled = true,
        String currency = 'USD',
        String locale = 'en_US',
        GlobalKey<FormWidgetState>? key,
        void Function(String, dynamic)? onChanged}) =>
    host(TestFormWidget(
      key: key,
      form: form,
      enabled: formEnabled,
      onChanged: onChanged,
      declarations: [
        Field.currency('price',
            currency: currency,
            locale: locale,
            showCalculator: showCalculator,
            hidden: hidden,
            enabled: enabled,
            readOnly: readOnly),
      ],
    ));

void main() {
  testWidgets(
      'device keyboard remains the default and mode changes keep drafts',
      (tester) async {
    final form = priceForm(2);
    await tester.pumpWidget(page(form, showCalculator: false));
    await enter(tester, 'price', '12.5');
    final state = form.formKey!.currentState!.fields['price'];
    expect(
        tester.widget<FormBuilderTextField>(currencyInput()).readOnly, isFalse);
    expect(tester.testTextInput.isVisible, isTrue);
    await tester.pumpWidget(page(form));
    expect(form.formKey!.currentState!.fields['price'], same(state));
    expect(state!.value, '12.50');
    await openCalculator(tester);
    expect(tester.testTextInput.isVisible, isFalse);
    expect(tester.widget<SimpleCalculator>(find.byType(SimpleCalculator)).value,
        12.5);
    await tester.tapAt(const Offset(5, 5));
    await tester.pumpAndSettle();
    await tester.pumpWidget(page(form, showCalculator: false));
    expect(form.formKey!.currentState!.fields['price'], same(state));
    await enter(tester, 'price', '8.25');
    expect(form.values['price'], 8.25);
  });

  testWidgets('Done evaluates pending arithmetic and commits exactly once',
      (tester) async {
    final form = priceForm();
    var changes = 0;
    await tester.pumpWidget(page(form, onChanged: (_, __) => changes++));
    await openCalculator(tester);
    for (final key in ['1', '0', '×', '2']) {
      await press(tester, key);
    }
    expect(form.values['price'], isNull);
    expect(form.saves, 0);
    expect(changes, 0);
    await done(tester);
    expect(find.byType(SimpleCalculator), findsNothing);
    expect(form.values['price'], 20);
    expect(form.formKey!.currentState!.fields['price']!.value, '20.00');
    expect(form.saves, 1);
    expect(changes, 1);
  });

  testWidgets('Done after equals does not repeat the arithmetic',
      (tester) async {
    final form = priceForm();
    await tester.pumpWidget(page(form));
    await openCalculator(tester);
    for (final key in ['1', '0', '×', '2', '=']) {
      await press(tester, key);
    }
    await done(tester);
    expect(form.values['price'], 20);
    expect(form.saves, 1);
  });

  testWidgets(
      'Done supports addition, division, percent and edits after equals',
      (tester) async {
    final cases = <List<String>, double>{
      ['1', '0', '+', '2']: 12,
      ['1', '0', '÷', '2']: 5,
      ['1', '0', '0', '+', '1', '0', '%']: 110,
      ['1', '0', '×', '2', '=', '+', '3']: 23,
      ['1', '0', '×', '2', '=', '±']: -20,
    };
    for (final entry in cases.entries) {
      final form = priceForm();
      await tester.pumpWidget(page(form));
      await openCalculator(tester);
      for (final key in entry.key) {
        await press(tester, key);
      }
      await done(tester);
      expect(form.values['price'], entry.value, reason: entry.key.join(' '));
      expect(form.saves, 1);
    }
  });

  testWidgets(
      'malformed device drafts survive cancel and calculator can repair',
      (tester) async {
    final form = priceForm(12.5);
    Widget view(bool calculator) => host(TestFormWidget(
          form: form,
          declarations: [
            Field.currency('price',
                currency: 'USD',
                locale: 'en_US',
                showCalculator: calculator,
                inputFormatters: []),
          ],
        ));
    await tester.pumpWidget(view(false));
    await enter(tester, 'price', 'bad draft');
    final saves = form.saves;
    await tester.pumpWidget(view(true));
    await openCalculator(tester);
    expect(tester.widget<SimpleCalculator>(find.byType(SimpleCalculator)).value,
        12.5);
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(form.formKey!.currentState!.fields['price']!.value, 'bad draft');
    expect(form.saves, saves);
    await openCalculator(tester);
    await press(tester, 'C');
    await press(tester, '9');
    await done(tester);
    expect(form.formKey!.currentState!.fields['price']!.value, '9.00');
    expect(form.values['price'], 9);
    expect(form.saves, saves + 1);
  });

  testWidgets('back, barrier and swipe dismissals cancel local edits',
      (tester) async {
    final form = priceForm(12.5);
    await tester.pumpWidget(page(form));
    for (final dismiss in ['back', 'barrier', 'swipe']) {
      await openCalculator(tester);
      await press(tester, 'C');
      await press(tester, '9');
      if (dismiss == 'back') {
        await tester.binding.handlePopRoute();
      } else if (dismiss == 'barrier') {
        await tester.tapAt(const Offset(5, 5));
      } else {
        await tester.drag(find.byType(BottomSheet), const Offset(0, 600));
      }
      await tester.pumpAndSettle();
      expect(find.byType(SimpleCalculator), findsNothing);
      expect(form.values['price'], 12.5);
      expect(form.formKey!.currentState!.fields['price']!.value, '12.50');
      expect(form.saves, 0);
    }
  });

  testWidgets('unchanged null and zero keep their existing model state',
      (tester) async {
    for (final value in <double?>[null, 0]) {
      final form = priceForm(value);
      await tester.pumpWidget(page(form));
      await openCalculator(tester);
      await done(tester);
      expect(form.values['price'], value);
      expect(form.saves, 0);
    }
  });

  testWidgets('Clear applies null only on Done and required validation remains',
      (tester) async {
    final form = priceForm(10);
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(page(form, key: key));
    await openCalculator(tester);
    await tester.tap(find.widgetWithText(TextButton, 'Clear'));
    await tester.pump();
    expect(form.values['price'], 10);
    expect(form.saves, 0);
    await done(tester);
    expect(form.values['price'], isNull);
    expect(form.saves, 1);
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    expect(key.currentState!.errors, {'price': 'Price required'});
  });

  testWidgets('calculator AC produces numeric zero rather than null',
      (tester) async {
    final form = priceForm();
    await tester.pumpWidget(page(form));
    await openCalculator(tester);
    await press(tester, 'C');
    await press(tester, 'AC');
    await done(tester);
    expect(form.values['price'], 0);
  });

  testWidgets(
      'calculator localizes decimals and saves rounded currency amounts',
      (tester) async {
    final form = priceForm();
    await tester.pumpWidget(page(form, currency: 'EUR', locale: 'de_DE'));
    await openCalculator(tester);
    for (final key in ['1', ',', '2', '3', '4', '±']) {
      await press(tester, key);
    }
    await done(tester);
    expect(form.values['price'], -1.23);
    expect(form.formKey!.currentState!.fields['price']!.value, '-1,23');
  });

  testWidgets('zero decimal currencies round the result before saving',
      (tester) async {
    final form = priceForm();
    await tester.pumpWidget(page(form, currency: 'JPY'));
    await openCalculator(tester);
    for (final key in ['1', '.', '7', '5']) {
      await press(tester, key);
    }
    await done(tester);
    expect(form.values['price'], 2);
    expect(form.formKey!.currentState!.fields['price']!.value, '2');
  });

  testWidgets('incomplete and nonfinite calculations stay local',
      (tester) async {
    final form = priceForm();
    await tester.pumpWidget(page(form));
    await openCalculator(tester);
    await press(tester, '1');
    await press(tester, '÷');
    await done(tester);
    expect(find.text('Complete the calculation'), findsOneWidget);
    await press(tester, '0');
    await done(tester);
    expect(find.text('Enter a valid amount'), findsOneWidget);
    expect(form.values['price'], isNull);
    expect(form.saves, 0);
    await press(tester, 'AC');
    await press(tester, '3');
    await done(tester);
    expect(form.values['price'], 3);
  });

  testWidgets('read-only and disabled controls cannot open a calculator',
      (tester) async {
    final form = priceForm(3);
    for (final widget in [
      page(form, readOnly: true),
      page(form, enabled: false),
      page(form, formEnabled: false),
    ]) {
      await tester.pumpWidget(widget);
      final field = tester.widget<FormBuilderTextField>(currencyInput());
      field.onTap?.call();
      await tester.pumpAndSettle();
      expect(find.byType(SimpleCalculator), findsNothing);
      expect(form.saves, 0);
    }
  });

  testWidgets('flags and input mode changes cancel open calculator sessions',
      (tester) async {
    final form = priceForm(3);
    for (final widget in [
      page(form, hidden: true),
      page(form, readOnly: true),
      page(form, enabled: false),
      page(form, formEnabled: false),
      page(form, showCalculator: false),
    ]) {
      await tester.pumpWidget(page(form));
      await openCalculator(tester);
      await press(tester, 'C');
      await press(tester, '9');
      await tester.pumpWidget(widget);
      await tester.pumpAndSettle();
      expect(find.byType(SimpleCalculator), findsNothing);
      expect(form.values['price'], 3);
      expect(form.saves, 0);
    }
  });

  testWidgets(
      'external values and replacement forms cannot receive stale edits',
      (tester) async {
    final original = priceForm(3);
    await tester.pumpWidget(page(original));
    await openCalculator(tester);
    await press(tester, '9');
    original.save({'price': 7.0});
    await tester.pumpWidget(page(original));
    await tester.pumpAndSettle();
    expect(find.byType(SimpleCalculator), findsNothing);
    expect(original.values['price'], 7);
    expect(original.saves, 1);
    await openCalculator(tester);
    final replacement = priceForm(4);
    await tester.pumpWidget(page(replacement));
    await tester.pumpAndSettle();
    expect(find.byType(SimpleCalculator), findsNothing);
    expect(replacement.values['price'], 4);
    expect(replacement.saves, 0);
    expect(original.values['price'], 7);
  });

  testWidgets('cancelling a session does not dismiss a covering dialog',
      (tester) async {
    final form = priceForm(3);
    await tester.pumpWidget(page(form));
    await openCalculator(tester);
    final context = tester.element(find.byType(SimpleCalculator));
    showDialog<void>(
      context: context,
      builder: (_) => const AlertDialog(content: Text('Covering dialog')),
    );
    await tester.pumpAndSettle();
    await tester.pumpWidget(page(form, hidden: true));
    await tester.pumpAndSettle();
    expect(find.text('Covering dialog'), findsOneWidget);
    expect(find.byType(SimpleCalculator, skipOffstage: false), findsNothing);
    expect(form.values['price'], 3);
    expect(form.saves, 0);
  });

  testWidgets('repeated taps open one sheet and unmounting disposes it',
      (tester) async {
    final form = priceForm();
    await tester.pumpWidget(page(form));
    final tap = tester.widget<FormBuilderTextField>(currencyInput()).onTap!;
    tap();
    tap();
    await tester.pumpAndSettle();
    expect(find.byType(SimpleCalculator), findsOneWidget);
    await tester.pumpWidget(host(const SizedBox()));
    await tester.pumpAndSettle();
    expect(find.byType(SimpleCalculator), findsNothing);
    expect(tester.takeException(), isNull);
    expect(form.saves, 0);
  });
}
