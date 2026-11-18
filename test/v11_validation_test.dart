import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_z/form_builder_z.dart';
import 'package:material_ui/material_ui.dart';

import 'form_widget_test.dart' show TestFormWidget, host, enter;
import 'formatted_fields_test.dart' show FormattedForm;

FormattedForm validForm() => FormattedForm([
  const InputEntity<String>.pure(field: 'name', value: 'Valid'),
]);

void main() {
  testWidgets(
    'invalidate errors survive validation and reach failure callbacks',
    (tester) async {
      final form = validForm();
      final key = GlobalKey<FormWidgetState>();
      final failures = <Map<String, String>>[];
      await tester.pumpWidget(
        host(
          TestFormWidget(
            key: key,
            form: form,
            onFailure: failures.add,
            declarations: [Field.text('name')],
          ),
        ),
      );
      final field = form.formKey!.currentState!.fields['name']!;
      field.invalidate('Name already exists', shouldFocus: false);
      await tester.pump();
      expect(field.validate(focusOnInvalid: false), isFalse);
      expect(key.currentState!.errors, {'name': 'Name already exists'});
      expect(key.currentState!.saveAndValidate(), isFalse);
      await tester.pump();
      expect(key.currentState!.saveAndValidate(), isFalse);
      await tester.pump();
      expect(failures, [
        {'name': 'Name already exists'},
        {'name': 'Name already exists'},
      ]);
      await enter(tester, 'name', 'Updated');
      expect(key.currentState!.saveAndValidate(), isTrue);
      await tester.pump();
      expect(key.currentState!.errors, isEmpty);
    },
  );

  testWidgets('reset clears retained custom errors', (tester) async {
    final form = validForm();
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(
      host(
        TestFormWidget(
          key: key,
          form: form,
          declarations: [Field.text('name')],
        ),
      ),
    );
    final field = form.formKey!.currentState!.fields['name']!;
    field.invalidate('Server error', shouldFocus: false);
    await tester.pump();
    field.reset();
    await tester.pump();
    expect(key.currentState!.errors, isEmpty);
    expect(key.currentState!.saveAndValidate(), isTrue);
    await tester.pump();
  });

  testWidgets(
    'hidden fields retain invalidations without blocking submission',
    (tester) async {
      final form = validForm();
      final key = GlobalKey<FormWidgetState>();
      Widget view(bool hidden) => host(
        TestFormWidget(
          key: key,
          form: form,
          declarations: [Field.text('name', hidden: hidden)],
        ),
      );
      await tester.pumpWidget(view(false));
      final field = form.formKey!.currentState!.fields['name']!;
      field.invalidate('Retained error', shouldFocus: false);
      await tester.pump();
      await tester.pumpWidget(view(true));
      expect(key.currentState!.saveAndValidate(), isTrue);
      await tester.pump();
      expect(field.errorText, 'Retained error');
      expect(key.currentState!.errors, isEmpty);
      await tester.pumpWidget(view(false));
      expect(form.formKey!.currentState!.fields['name'], same(field));
      expect(key.currentState!.saveAndValidate(), isFalse);
      await tester.pump();
      expect(key.currentState!.errors, {'name': 'Retained error'});
    },
  );

  testWidgets('retained errors prevent async submit until edited', (
    tester,
  ) async {
    final form = validForm();
    var submissions = 0;
    await tester.pumpWidget(
      host(
        TestFormWidget(
          form: form,
          onSubmit: (_) => submissions++,
          declarations: [Field.text('name')],
        ),
      ),
    );
    form.formKey!.currentState!.fields['name']!.invalidate(
      'Try another name',
      shouldFocus: false,
    );
    await tester.pump();
    await tester.tap(find.widgetWithText(ElevatedButton, 'Submit'));
    await tester.pump();
    expect(submissions, 0);
    await enter(tester, 'name', 'Other name');
    await tester.tap(find.widgetWithText(ElevatedButton, 'Submit'));
    await tester.pump();
    expect(submissions, 1);
  });
}
