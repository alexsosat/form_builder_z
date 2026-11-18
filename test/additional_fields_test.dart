import 'package:material_ui/material_ui.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_z/example/nylo_fields_form.dart';
import 'package:form_builder_z/form_builder_z.dart';

import 'form_widget_test.dart' show TestFormWidget, host, enter;

class AdditionalFieldsForm extends FormEntity {
  AdditionalFieldsForm({bool empty = false})
      : _inputs = [
          InputEntity<double>.pure(
              field: 'currency', value: empty ? null : 1234.5),
          for (final name in [
            'words',
            'sentences',
            'url',
            'phone',
            'mask',
            'custom'
          ])
            InputEntity<String>.pure(field: name),
          const InputEntity<int>.pure(field: 'picker'),
          const InputEntity<int>.pure(field: 'radio'),
          const InputEntity<List<int>>.pure(field: 'chips'),
          const InputEntity<bool>.pure(field: 'switch'),
          InputEntity<double>.pure(field: 'slider', value: empty ? null : 0.25),
          InputEntity<RangeValues>.pure(
              field: 'range',
              value: empty ? null : const RangeValues(0.2, 0.8)),
        ],
        super(formKey: GlobalKey<FormBuilderState>());

  List<InputEntity> _inputs;
  int saves = 0;
  Map<String, dynamic>? lastSave;

  @override
  List<InputEntity> get inputs => _inputs;

  @override
  void save(Map<String, dynamic> values) {
    saves++;
    lastSave = Map.of(values);
    _inputs = [
      for (final input in _inputs) input.dirty(value: values[input.field]),
    ];
  }
}

List<FormBuilderFieldOption<int>> options(String prefix) => [
      FormBuilderFieldOption(value: 1, child: Text('$prefix One')),
      FormBuilderFieldOption(value: 2, child: Text('$prefix Two')),
    ];

List<Object> declarations(
        {bool hidden = false, bool readOnly = false, bool dummy = false}) =>
    [
      Field.currency('currency',
          currency: 'USD',
          locale: 'en_US',
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? 50.25 : null),
      Field.capitalizeWords('words',
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? 'Sample Name' : null),
      Field.capitalizeSentences('sentences',
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? 'Sample sentence.' : null),
      Field.url('url',
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? 'https://example.com' : null),
      Field.phoneNumber('phone',
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? '+1 (212) 555-1234' : null),
      Field.mask('mask',
          mask: '###-###',
          match: r'\d',
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? '123456' : null),
      Field.picker<int>('picker',
          options: options('Picker'),
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? 2 : null),
      Field.radio<int>('radio',
          options: options('Radio'),
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? 2 : null),
      Field.chips<int>('chips',
          options: options('Chip'),
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? [1, 2] : null),
      Field.switchBox('switch',
          label: 'Switch',
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? true : null),
      Field.slider('slider',
          hidden: hidden, readOnly: readOnly, dummyValue: dummy ? 0.75 : null),
      Field.rangeSlider('range',
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? const RangeValues(0.3, 0.7) : null),
      Field.custom<String>('custom',
          hidden: hidden,
          readOnly: readOnly,
          dummyValue: dummy ? 'Sample' : null,
          builder: (_, state) => TextButton(
                onPressed:
                    state.enabled ? () => state.didChange('Changed') : null,
                child: const Text('Change custom'),
              )),
    ];

void main() {
  testWidgets('the complete example mounts and validates its debug samples',
      (tester) async {
    final form = NyloFieldsForm(formKey: GlobalKey<FormBuilderState>());
    final key = GlobalKey<FormWidgetState>();
    await tester.pumpWidget(host(NyloFieldsFormWidget(key: key, form: form)));
    expect(form.formKey!.currentState!.fields.length, 15);
    expect(form.validate(), isTrue);
    expect(form.values['amount'], 150.75);
    expect(form.values['code'], '123456');
    expect(form.values['contactMethods'], ['email']);
    expect(form.values['priority'], 'normal');
    expect(key.currentState!.saveAndValidate(), isTrue);
    await tester.pump();
    expect(tester.takeException(), isNull);
  });

  testWidgets('all additional factories mount typed registered fields',
      (tester) async {
    final form = AdditionalFieldsForm();
    await tester.pumpWidget(
        host(TestFormWidget(form: form, declarations: declarations())));
    expect(form.formKey!.currentState!.fields.keys,
        unorderedEquals(form.values.keys));
    expect(form.saves, 0);
    expect(form.inputs.every((input) => input.isPure), isTrue);
    expect(find.byType(FormBuilderRadioGroup<int>), findsOneWidget);
    expect(find.byType(FormBuilderFilterChips<int>), findsOneWidget);
    expect(find.byType(FormBuilderSwitch), findsOneWidget);
    expect(find.byType(FormBuilderSlider), findsOneWidget);
    expect(find.byType(FormBuilderRangeSlider), findsOneWidget);
    final words = tester
        .widget<FormBuilderTextField>(find.byKey(const ValueKey('words')));
    final sentences = tester
        .widget<FormBuilderTextField>(find.byKey(const ValueKey('sentences')));
    final url =
        tester.widget<FormBuilderTextField>(find.byKey(const ValueKey('url')));
    final phone = tester
        .widget<FormBuilderTextField>(find.byKey(const ValueKey('phone')));
    expect(words.textCapitalization, TextCapitalization.words);
    expect(sentences.textCapitalization, TextCapitalization.sentences);
    expect(url.keyboardType, TextInputType.url);
    expect(phone.keyboardType, TextInputType.phone);
    expect(form.formKey!.currentState!.fields['currency']!.value, '1,234.50');
    expect(tester.takeException(), isNull);
  });

  testWidgets('new fields save complete typed maps through native controls',
      (tester) async {
    final form = AdditionalFieldsForm();
    await tester.pumpWidget(
        host(TestFormWidget(form: form, declarations: declarations())));
    await enter(tester, 'mask', '123456');
    expect(form.values['mask'], '123456');
    expect(form.formKey!.currentState!.fields['mask']!.value, '123-456');
    final radio = find.text('Radio Two');
    await tester.ensureVisible(radio);
    await tester.tap(radio);
    await tester.pump();
    expect(form.values['radio'], 2);
    for (final label in ['Chip One', 'Chip Two', 'Chip One']) {
      final chip = find.text(label);
      await tester.ensureVisible(chip);
      await tester.tap(chip);
      await tester.pump();
    }
    expect(form.values['chips'], [2]);
    final toggle = find.byType(Switch);
    await tester.ensureVisible(toggle);
    await tester.tap(toggle);
    await tester.pump();
    expect(form.values['switch'], isTrue);
    tester.widget<Slider>(find.byType(Slider)).onChanged!(0.75);
    tester
        .widget<RangeSlider>(find.byType(RangeSlider))
        .onChanged!(const RangeValues(0.3, 0.7));
    await tester.pump();
    expect(form.values['slider'], 0.75);
    expect(form.values['range'], const RangeValues(0.3, 0.7));
    final custom = find.text('Change custom');
    await tester.ensureVisible(custom);
    await tester.tap(custom);
    await tester.pump();
    expect(form.values['custom'], 'Changed');
    expect(form.lastSave!.keys, unorderedEquals(form.values.keys));
    expect(form.values['currency'], 1234.5);
    expect(tester.takeException(), isNull);
  });

  testWidgets('picker selects, clears and dismisses without spurious saves',
      (tester) async {
    final form = AdditionalFieldsForm();
    await tester.pumpWidget(
        host(TestFormWidget(form: form, declarations: declarations())));
    final picker = find.descendant(
        of: find.byKey(const ValueKey('picker')),
        matching: find.byType(InkWell));
    Future<void> open() async {
      await tester.ensureVisible(picker);
      await tester.tap(picker);
      await tester.pumpAndSettle();
    }

    await open();
    await tester.tap(find.text('Picker Two'));
    await tester.pumpAndSettle();
    expect(form.values['picker'], 2);
    final saves = form.saves;
    await open();
    await tester.tapAt(const Offset(10, 10));
    await tester.pumpAndSettle();
    expect(form.values['picker'], 2);
    expect(form.saves, saves);
    await open();
    await tester.tap(find.text('Clear'));
    await tester.pumpAndSettle();
    expect(form.values['picker'], isNull);
    expect(form.saves, saves + 1);
  });

  testWidgets('dummy values populate every new input with its model type',
      (tester) async {
    final form = AdditionalFieldsForm(empty: true);
    await tester.pumpWidget(host(
        TestFormWidget(form: form, declarations: declarations(dummy: true))));
    expect(form.saves, 1);
    expect(form.values, {
      'currency': 50.25,
      'words': 'Sample Name',
      'sentences': 'Sample sentence.',
      'url': 'https://example.com',
      'phone': '+1 (212) 555-1234',
      'mask': '123456',
      'custom': 'Sample',
      'picker': 2,
      'radio': 2,
      'chips': [1, 2],
      'switch': true,
      'slider': 0.75,
      'range': const RangeValues(0.3, 0.7),
    });
    expect(form.formKey!.currentState!.fields['mask']!.value, '123-456');
    expect(form.formKey!.currentState!.fields['currency']!.value, '50.25');
    expect(tester.takeException(), isNull);
  });

  testWidgets(
      'read-only controls are disabled and external updates synchronize',
      (tester) async {
    final form = AdditionalFieldsForm();
    Widget page() => host(
        TestFormWidget(form: form, declarations: declarations(readOnly: true)));
    await tester.pumpWidget(page());
    expect(tester.widget<Slider>(find.byType(Slider)).onChanged, isNull);
    expect(
        tester.widget<RangeSlider>(find.byType(RangeSlider)).onChanged, isNull);
    expect(tester.widget<Switch>(find.byType(Switch)).onChanged, isNull);
    expect(
        tester
            .widget<FormBuilderRadioGroup<int>>(
                find.byType(FormBuilderRadioGroup<int>))
            .enabled,
        isFalse);
    expect(
        tester
            .widget<FormBuilderFilterChips<int>>(
                find.byType(FormBuilderFilterChips<int>))
            .enabled,
        isFalse);
    final picker = tester.widget<InkWell>(find.descendant(
        of: find.byKey(const ValueKey('picker')),
        matching: find.byType(InkWell)));
    expect(picker.onTap, isNull);
    form.save({
      ...form.values,
      'picker': 2,
      'chips': <int>[2],
      'slider': 0.6,
      'range': const RangeValues(0.4, 0.9)
    });
    final saves = form.saves;
    await tester.pumpWidget(page());
    await tester.pump();
    expect(form.saves, saves);
    expect(form.formKey!.currentState!.fields['picker']!.value, 2);
    expect(tester.widget<Slider>(find.byType(Slider)).value, 0.6);
    expect(tester.widget<RangeSlider>(find.byType(RangeSlider)).values,
        const RangeValues(0.4, 0.9));
    expect(tester.takeException(), isNull);
  });

  testWidgets('hidden new controls remain registered and retain their values',
      (tester) async {
    final form = AdditionalFieldsForm();
    final key = GlobalKey<FormWidgetState>();
    var hidden = false;
    Widget page() => host(TestFormWidget(
        key: key, form: form, declarations: declarations(hidden: hidden)));
    await tester.pumpWidget(page());
    await enter(tester, 'mask', '123456');
    final registered = Map.of(form.formKey!.currentState!.fields);
    hidden = true;
    await tester.pumpWidget(page());
    expect(find.byType(Slider), findsNothing);
    expect(find.byType(FormBuilderRadioGroup<int>), findsNothing);
    expect(key.currentState!.saveAndValidate(), isTrue);
    await tester.pump();
    expect(form.values['mask'], '123456');
    for (final entry in registered.entries) {
      expect(form.formKey!.currentState!.fields[entry.key], same(entry.value));
    }
    hidden = false;
    await tester.pumpWidget(page());
    expect(form.formKey!.currentState!.fields['mask']!.value, '123-456');
    expect(tester.takeException(), isNull);
  });

  test('slider and mask declarations reject invalid configuration', () {
    expect(() => Field.slider('slider', min: 2, max: 1), throwsArgumentError);
    expect(() => Field.rangeSlider('range', divisions: 0), throwsArgumentError);
    expect(() => Field.slider('slider', max: double.infinity),
        throwsArgumentError);
    expect(() => Field.mask('mask', mask: '---'), throwsArgumentError);
  });
}
