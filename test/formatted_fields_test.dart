import 'package:material_ui/material_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/form_builder_z.dart';

import 'form_widget_test.dart' show TestFormWidget, host, enter;

class FormattedForm extends FormEntity {
  FormattedForm(this._inputs) : super(formKey: GlobalKey<FormBuilderState>());

  List<InputEntity> _inputs;
  int saves = 0;

  @override
  List<InputEntity> get inputs => _inputs;

  @override
  void save(Map<String, dynamic> values) {
    saves++;
    _inputs = [
      for (final input in _inputs) input.dirty(value: values[input.field]),
    ];
  }
}

void main() {
  testWidgets('selection fields honor model validators, read-only and hiding',
      (tester) async {
    final form = FormattedForm([
      const InputEntity<int>.pure(field: 'picker', validators: [
        RequiredValidator(errorText: 'Choose picker'),
      ]),
      const InputEntity<int>.pure(field: 'radio', validators: [
        RequiredValidator(errorText: 'Choose radio'),
      ]),
      const InputEntity<List<int>>.pure(field: 'chips', validators: [
        RequiredValidator(errorText: 'Choose chips'),
      ]),
    ]);
    final key = GlobalKey<FormWidgetState>();
    var hidden = false;
    var locked = true;
    Widget page() => host(TestFormWidget(
          key: key,
          form: form,
          declarations: [
            Field.picker<int>('picker',
                hidden: hidden,
                readOnly: locked,
                options: const [FormBuilderFieldOption(value: 1)]),
            Field.radio<int>('radio',
                hidden: hidden,
                readOnly: locked,
                options: const [FormBuilderFieldOption(value: 1)]),
            Field.chips<int>('chips',
                hidden: hidden,
                readOnly: locked,
                options: const [FormBuilderFieldOption(value: 1)]),
          ],
        ));
    await tester.pumpWidget(page());
    expect(key.currentState!.saveAndValidate(), isFalse);
    expect(key.currentState!.errors, {
      'picker': 'Choose picker',
      'radio': 'Choose radio',
      'chips': 'Choose chips',
    });
    await tester.pump();
    hidden = true;
    await tester.pumpWidget(page());
    expect(key.currentState!.saveAndValidate(), isTrue);
    expect(key.currentState!.errors, isEmpty);
    await tester.pump();
    hidden = false;
    locked = false;
    await tester.pumpWidget(page());
    form.formKey!.currentState!.fields['picker']!.didChange(1);
    form.formKey!.currentState!.fields['radio']!.didChange(1);
    form.formKey!.currentState!.fields['chips']!.didChange(<int>[1]);
    await tester.pump();
    expect(key.currentState!.saveAndValidate(), isTrue);
    await tester.pump();
    expect(form.values, {
      'picker': 1,
      'radio': 1,
      'chips': [1]
    });
  });

  testWidgets(
      'currency edits save amounts, clearing preserves required validation',
      (tester) async {
    final form = FormattedForm([
      const InputEntity<double>.pure(field: 'price', validators: [
        RequiredValidator(errorText: 'Price required'),
      ]),
    ]);
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: form,
      declarations: [Field.currency('price', currency: 'USD', locale: 'en_US')],
    )));
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    await enter(tester, 'price', '1234.5');
    expect(form.values['price'], 1234.5);
    expect(form.formKey!.currentState!.fields['price']!.value, '1,234.50');
    expect(key.currentState!.saveAndValidate(), isTrue);
    expect(form.formKey!.currentState!.value['price'], 1234.5);
    await tester.pump();
    await enter(tester, 'price', '');
    expect(form.values['price'], isNull);
    expect(key.currentState!.saveAndValidate(), isFalse);
    expect(key.currentState!.errors, {'price': 'Price required'});
    await tester.pump();
  });

  testWidgets('currency handles comma decimals and external model updates',
      (tester) async {
    final form = FormattedForm([
      const InputEntity<double>.pure(field: 'price', value: 1234.5),
    ]);
    Widget page() => host(TestFormWidget(
          form: form,
          declarations: [
            Field.currency('price', currency: 'EUR', locale: 'de_DE')
          ],
        ));
    await tester.pumpWidget(page());
    expect(form.formKey!.currentState!.fields['price']!.value, '1.234,50');
    await enter(tester, 'price', '12,75');
    expect(form.values['price'], 12.75);
    form.save({'price': 9876.5});
    final saves = form.saves;
    await tester.pumpWidget(page());
    await tester.pump();
    expect(form.formKey!.currentState!.fields['price']!.value, '9.876,50');
    expect(form.saves, saves);
  });

  testWidgets('invalid currency drafts preserve the last accepted amount',
      (tester) async {
    final form = FormattedForm([
      const InputEntity<double>.pure(field: 'price', value: 12.5),
    ]);
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: form,
      declarations: [
        Field.currency('price',
            currency: 'USD', locale: 'en_US', inputFormatters: [])
      ],
    )));
    await enter(tester, 'price', 'bad draft');
    expect(form.values['price'], 12.5);
    expect(key.currentState!.saveAndValidate(), isFalse);
    expect(key.currentState!.errors, {'price': 'Enter a valid amount'});
    await tester.pump();
    expect(find.text('bad draft'), findsOneWidget);
    await enter(tester, 'price', '9.25');
    expect(form.values['price'], 9.25);
    expect(key.currentState!.saveAndValidate(), isTrue);
    await tester.pump();
  });

  testWidgets(
      'masks display formatted text while validating and saving raw characters',
      (tester) async {
    final form = FormattedForm([
      const InputEntity<String>.pure(
          field: 'code',
          value: '123456',
          validators: [
            MinLengthValidator(6, errorText: 'Need six digits'),
          ]),
    ]);
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: form,
      declarations: [Field.mask('code', mask: '###-###', match: r'\d')],
    )));
    expect(form.formKey!.currentState!.fields['code']!.value, '123-456');
    expect(key.currentState!.saveAndValidate(), isTrue);
    expect(form.formKey!.currentState!.value['code'], '123456');
    await tester.pump();
    await enter(tester, 'code', '1234');
    expect(form.values['code'], '1234');
    expect(form.formKey!.currentState!.fields['code']!.value, '123-4');
    expect(key.currentState!.saveAndValidate(), isFalse);
    expect(key.currentState!.errors, {'code': 'Need six digits'});
    await tester.pump();
  });

  testWidgets('maskReturnValue retains punctuation in the model and form map',
      (tester) async {
    final form = FormattedForm([
      const InputEntity<String>.pure(field: 'code', value: '123-456'),
    ]);
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: form,
      declarations: [
        Field.mask('code', mask: '###-###', match: r'\d', maskReturnValue: true)
      ],
    )));
    expect(form.formKey!.currentState!.fields['code']!.value, '123-456');
    await enter(tester, 'code', '654321');
    expect(form.values['code'], '654-321');
    expect(key.currentState!.saveAndValidate(), isTrue);
    expect(form.formKey!.currentState!.value['code'], '654-321');
    await tester.pump();
  });

  testWidgets('mask editing survives rebuilds and externally patched values',
      (tester) async {
    final form = FormattedForm([
      const InputEntity<String>.pure(field: 'code', value: '123456'),
    ]);
    Widget page() => host(TestFormWidget(
          form: form,
          declarations: [Field.mask('code', mask: '###-###', match: r'\d')],
        ));
    await tester.pumpWidget(page());
    final registered = form.formKey!.currentState!.fields['code'];
    await tester.pumpWidget(page());
    await enter(tester, 'code', '123-45');
    expect(form.values['code'], '12345');
    form.save({'code': '654321'});
    final saves = form.saves;
    await tester.pumpWidget(page());
    await tester.pump();
    expect(form.saves, saves);
    expect(form.formKey!.currentState!.fields['code'], same(registered));
    expect(form.formKey!.currentState!.fields['code']!.value, '654-321');
    await enter(tester, 'code', '654-32');
    expect(form.values['code'], '65432');
    expect(form.formKey!.currentState!.fields['code']!.value, '654-32');
    await enter(tester, 'code', '');
    expect(form.values['code'], '');
  });

  testWidgets('all existing text factories apply caller formatters in order',
      (tester) async {
    final form = FormattedForm([
      for (final name in ['text', 'email', 'password', 'area'])
        InputEntity<String>.pure(field: name),
      const InputEntity<double>.pure(field: 'number'),
    ]);
    final formatters = [
      FilteringTextInputFormatter.digitsOnly,
      LengthLimitingTextInputFormatter(3),
    ];
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      declarations: [
        Field.text('text', inputFormatters: formatters),
        Field.email('email', inputFormatters: formatters),
        Field.password('password', viewable: true, inputFormatters: formatters),
        Field.textArea('area', inputFormatters: formatters),
        Field.number('number', inputFormatters: formatters),
      ],
    )));
    for (final name in form.values.keys) {
      await enter(tester, name, 'ab12345');
      expect(form.formKey!.currentState!.fields[name]!.value, '123');
      expect(form.values[name], name == 'number' ? 123.0 : '123');
    }
  });

  testWidgets(
      'specialized text fields allow replacing their default formatters',
      (tester) async {
    final form = FormattedForm([
      const InputEntity<String>.pure(field: 'url'),
      const InputEntity<String>.pure(field: 'phone'),
    ]);
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      declarations: [
        Field.url('url', inputFormatters: []),
        Field.phoneNumber('phone', inputFormatters: []),
      ],
    )));
    await enter(tester, 'url', 'some text');
    await enter(tester, 'phone', 'some text');
    expect(form.values, {'url': 'some text', 'phone': 'some text'});
  });
}
