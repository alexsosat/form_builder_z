import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../form_builder_z.dart';

/// All additional Nylo-inspired fields using the unchanged model/save contract.
class NyloFieldsForm extends FormEntity {
  NyloFieldsForm({super.formKey});

  List<InputEntity> _inputs = [
    const InputEntity<String>.pure(
        field: 'name', validators: [RequiredValidator()]),
    const InputEntity<String>.pure(field: 'description'),
    InputEntity<String>.pure(field: 'website', validators: [UrlValidator()]),
    const InputEntity<String>.pure(field: 'phone'),
    const InputEntity<double>.pure(
        field: 'amount', validators: [RequiredValidator()]),
    const InputEntity<String>.pure(
        field: 'code', validators: [MinLengthValidator(6)]),
    const InputEntity<String>.pure(field: 'country'),
    const InputEntity<String>.pure(field: 'delivery'),
    const InputEntity<List<String>>.pure(field: 'interests'),
    const BoolInput.pure(field: 'notifications'),
    const InputEntity<double>.pure(field: 'rating', value: 3),
    const InputEntity<RangeValues>.pure(
        field: 'budget', value: RangeValues(20, 80)),
    const InputEntity<Color>.pure(field: 'color', value: Colors.blue),
  ];

  @override
  List<InputEntity> get inputs => _inputs;

  @override
  void save(Map<String, dynamic> fields) {
    _inputs = [
      for (final input in _inputs) input.dirty(value: fields[input.field]),
    ];
  }
}

class NyloFieldsFormWidget extends FormWidget<NyloFieldsForm> {
  const NyloFieldsFormWidget({
    super.key,
    required super.form,
    super.onSubmit,
    super.onFailure,
    super.onChanged,
    super.useDummyValues,
  });

  @override
  List<Object> fields() => [
        Field.capitalizeWords('name', label: 'Name', dummyValue: 'Alex Sosa'),
        Field.capitalizeSentences('description',
            label: 'Description', dummyValue: 'A sample description.'),
        Field.url('website',
            label: 'Website', dummyValue: 'https://example.com'),
        Field.phoneNumber('phone',
            label: 'Phone', dummyValue: '+1 (212) 555-1234'),
        Field.currency('amount',
            label: 'Amount',
            currency: 'MXN',
            locale: 'es_MX',
            showCalculator: true,
            dummyValue: 150.75),
        Field.mask('code',
            label: 'Code',
            mask: '###-###',
            match: r'\d',
            dummyValue: '123456',
            keyboardType: TextInputType.number),
        Field.picker<String>('country',
            label: 'Country',
            dummyValue: 'MX',
            options: const [
              FormBuilderFieldOption(value: 'MX', child: Text('Mexico')),
              FormBuilderFieldOption(value: 'US', child: Text('United States')),
            ]),
        Field.radio<String>('delivery',
            label: 'Delivery',
            dummyValue: 'home',
            options: const [
              FormBuilderFieldOption(
                  value: 'home', child: Text('Home delivery')),
              FormBuilderFieldOption(value: 'pickup', child: Text('Pickup')),
            ]),
        Field.chips<String>('interests', label: 'Interests', dummyValue: [
          'dart',
          'flutter'
        ], options: const [
          FormBuilderFieldOption(value: 'dart', child: Text('Dart')),
          FormBuilderFieldOption(value: 'flutter', child: Text('Flutter')),
        ]),
        Field.switchBox('notifications', label: 'Notifications'),
        Field.slider('rating', label: 'Rating', min: 1, max: 5, divisions: 4),
        Field.rangeSlider('budget', label: 'Budget', min: 0, max: 100),
        Field.custom<Color>('color',
            label: 'Color',
            builder: (_, state) => Wrap(
                  spacing: 8,
                  children: [
                    for (final color in [Colors.blue, Colors.red])
                      TextButton(
                        onPressed:
                            state.enabled ? () => state.didChange(color) : null,
                        child: Icon(Icons.circle, color: color),
                      ),
                  ],
                )),
      ];
}
