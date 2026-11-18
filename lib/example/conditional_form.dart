import 'package:material_ui/material_ui.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../fields/field.dart';
import '../inputs/bool_input.dart';
import '../inputs/double_input.dart';
import '../models/form_entity.dart';
import '../models/input_entity.dart';
import '../widgets/form_widget.dart';

/// The original model contract remains unchanged: inputs and a saving override.
class ConditionalForm extends FormEntity {
  ConditionalForm({super.formKey});

  BoolInput hasDetails = const BoolInput.pure(field: 'hasDetails');
  InputEntity<String> details = const InputEntity<String>.pure(
    field: 'details',
    validators: [RequiredValidator(errorText: 'Details are required')],
  );
  DoubleInput amount = const DoubleInput.pure(field: 'amount', validators: []);

  @override
  List<InputEntity> get inputs => [hasDetails, details, amount];

  @override
  void save(Map<String, dynamic> fields) {
    hasDetails = hasDetails.dirty(value: fields['hasDetails'] as bool?);
    details = details.dirty(value: fields['details'] as String?);
    amount = amount.dirty(value: fields['amount'] as double?);
  }
}

class ConditionalFormWidget extends FormWidget<ConditionalForm> {
  const ConditionalFormWidget({
    super.key,
    required super.form,
    this.locked = false,
    super.onSubmit,
    super.onChanged,
    super.onFailure,
    super.layoutBuilder,
    super.useDummyValues,
  });

  final bool locked;

  @override
  List<Object> fields() {
    final hidden = form.hasDetails.value != true;
    return [
      Field.checkbox('hasDetails', label: 'Add details'),
      Field.widget(
        hidden: hidden,
        child: const Text('These values are retained when details are hidden.'),
      ),
      [
        Field.text('details',
            label: 'Details', hidden: hidden, readOnly: locked),
        Field.number('amount',
            label: 'Amount', hidden: hidden, readOnly: locked),
      ],
    ];
  }
}
