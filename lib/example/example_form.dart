import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/models/form_entity.dart';
import 'package:form_builder_z/models/input_entity.dart';

class ExampleForm extends FormEntity {
  ExampleForm({
    InputEntity<String>? stringInput,
    int maxLength = 8,
    super.formKey,
  }) : stringInput = stringInput ??
            InputEntity<String>.pure(
              field: 'text',
              validators: [
                const RequiredValidator(),
                MaxLengthValidator(maxLength),
              ],
            );

  InputEntity<String> stringInput;

  @override
  List<InputEntity> get inputs => [stringInput];

  @override
  void save(Map<String, dynamic> fields) {
    stringInput = stringInput.dirty(
      value: fields[stringInput.field] as String?,
    );
  }
}
