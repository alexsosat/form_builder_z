import 'package:material_ui/material_ui.dart';

import '../fields/field.dart';
import '../widgets/form_widget.dart';
import 'example_form.dart';

/// Declare the UI once; pages instantiate this form widget directly.
class ExampleFormWidget extends FormWidget<ExampleForm> {
  const ExampleFormWidget({
    super.key,
    required super.form,
    super.onSubmit,
    super.onFailure,
    super.onChanged,
    super.submitLabel,
    super.submitButtonBuilder,
    super.layoutBuilder,
    super.padding,
    super.mainAxisSpacing,
    super.crossAxisSpacing,
    super.header,
    super.footer,
    super.enabled,
    super.useDummyValues,
    super.autovalidateMode,
  });

  @override
  List<Object> fields() => [
        Field.text(
          form.stringInput.field,
          label: 'Text',
          dummyValue: 'Example',
        ),
        Field.widget(child: const Divider()),
      ];
}
