import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/inputs/string_input.dart';
import 'package:form_builder_z/models/form_entity.dart';
import 'package:form_builder_z/models/input_entity.dart';

class ExampleForm extends FormEntity {
  ExampleForm({
    this.stringInput = const StringInput.pure(
      field: "text",
      validators: [
        RequiredValidator(),
        MaxLengthValidator(8),
      ],
    ),
  });

  final StringInput stringInput;

  @override
  // TODO: implement inputs
  List<InputEntity> get inputs => throw UnimplementedError();

  @override
  void save(Map<String, dynamic> fields) {
    // TODO: implement save
  }
}
