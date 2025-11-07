import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/models/form_entity.dart';
import 'package:form_builder_z/models/input_entity.dart';

class ExampleForm extends FormEntity {
  ExampleForm({
    this.stringInput = const InputEntity.pure(
      field: "text",
    ),
  });

  InputEntity<String> stringInput;

  @override
  // TODO: implement inputs
  List<InputEntity> get inputs => throw UnimplementedError();

  @override
  void save(Map<String, dynamic> fields) {
    stringInput = stringInput.dirty(
      value: fields[stringInput.field],
      validators: const [
        RequiredValidator(),
        MaxLengthValidator(8),
      ],
    );
  }
}
