# form_builder_z

A powerful Flutter package that provides a type-safe, declarative approach to form handling and validation. Built on top of `formz` and `flutter_form_builder`, this package simplifies form state management and validation in Flutter applications.

## Features

- 🎯 **Type-safe form inputs** - Strongly typed input entities for different data types
- ✅ **Built-in validation** - Seamless integration with `form_builder_validators`
- 🔄 **Pure/Dirty state management** - Track form field modifications using the Formz pattern
- 📝 **Multiple input types** - Support for booleans, dates, numbers, files, and more
- 🎨 **Flutter Form Builder integration** - Works seamlessly with `flutter_form_builder` widgets
- 🚨 **Automatic error handling** - Automatic error display and form validation
- 🔍 **Custom validators** - Easy to create and use custom validators

## Getting started

### Installation

Add `form_builder_z` to your `pubspec.yaml`:

```yaml
dependencies:
  form_builder_z: ^0.0.8
  flutter_form_builder: ^10.2.0
  form_builder_validators: ^11.2.0
```

Then run:

```bash
flutter pub get
```

## Usage

### Basic Example

Here's a simple example of creating a form with validation:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/models/form_entity.dart';
import 'package:form_builder_z/models/input_entity.dart';
import 'package:form_builder_z/inputs/bool_input.dart';
import 'package:form_builder_z/inputs/double_input.dart';

// 1. Define your form class extending FormEntity
class UserForm extends FormEntity {
  UserForm({
    this.nameInput = const InputEntity.pure(field: 'name'),
    this.emailInput = const InputEntity.pure(field: 'email'),
    this.ageInput = const DoubleInput.pure(field: 'age'),
    this.agreeToTerms = const BoolInput.pure(field: 'agreeToTerms'),
    super.formKey,
  });

  InputEntity<String> nameInput;
  InputEntity<String> emailInput;
  DoubleInput ageInput;
  BoolInput agreeToTerms;

  @override
  List<InputEntity> get inputs => [
        nameInput,
        emailInput,
        ageInput,
        agreeToTerms,
      ];

  @override
  void save(Map<String, dynamic> fields) {
    nameInput = nameInput.dirty(
      value: fields[nameInput.field] as String?,
      validators: const [
        RequiredValidator(errorText: 'Name is required'),
        MinLengthValidator(3, errorText: 'Name must be at least 3 characters'),
      ],
    );

    emailInput = emailInput.dirty(
      value: fields[emailInput.field] as String?,
      validators: const [
        RequiredValidator(errorText: 'Email is required'),
        EmailValidator(errorText: 'Please enter a valid email'),
      ],
    );

    ageInput = ageInput.dirty(
      value: fields[ageInput.field] != null
          ? double.tryParse(fields[ageInput.field].toString())
          : null,
      validators: const [
        RequiredValidator(errorText: 'Age is required'),
        NumericValidator(errorText: 'Please enter a valid number'),
      ],
    );

    agreeToTerms = agreeToTerms.dirty(
      value: fields[agreeToTerms.field] as bool? ?? false,
      validators: const [
        RequiredValidator(errorText: 'You must agree to the terms'),
      ],
    );
  }
}

// 2. Use the form in your widget
class UserFormWidget extends StatefulWidget {
  @override
  _UserFormWidgetState createState() => _UserFormWidgetState();
}

class _UserFormWidgetState extends State<UserFormWidget> {
  final _formKey = GlobalKey<FormBuilderState>();
  late UserForm _form;

  @override
  void initState() {
    super.initState();
    _form = UserForm(formKey: _formKey);
  }

  void _onSubmit() {
    // Validate and save the form
    if (_form.saveAndValidate()) {
      // Form is valid, access values
      final values = _form.values;
      print('Form values: $values');
      
      // Access individual values
      print('Name: ${_form.nameInput.value}');
      print('Email: ${_form.emailInput.value}');
      print('Age: ${_form.ageInput.value}');
      print('Agrees to terms: ${_form.agreeToTerms.value}');
    } else {
      // Form has errors
      print('Form errors: ${_form.errors}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            name: _form.nameInput.field,
            decoration: const InputDecoration(labelText: 'Name'),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(3),
            ]),
          ),
          const SizedBox(height: 16),
          FormBuilderTextField(
            name: _form.emailInput.field,
            decoration: const InputDecoration(labelText: 'Email'),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ]),
          ),
          const SizedBox(height: 16),
          FormBuilderTextField(
            name: _form.ageInput.field,
            decoration: const InputDecoration(labelText: 'Age'),
            keyboardType: TextInputType.number,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.numeric(),
            ]),
          ),
          const SizedBox(height: 16),
          FormBuilderCheckbox(
            name: _form.agreeToTerms.field,
            title: const Text('I agree to the terms and conditions'),
            validator: FormBuilderValidators.required(),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _onSubmit,
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
```

### Available Input Types

The package provides several input types for different data formats:

#### BoolInput
For boolean/checkbox inputs:

```dart
import 'package:form_builder_z/inputs/bool_input.dart';

BoolInput agreeToTerms = const BoolInput.pure(field: 'agreeToTerms');
```

#### DateTimeInput
For date and time inputs:

```dart
import 'package:form_builder_z/inputs/date_time_input.dart';

DateTimeInput birthDate = const DateTimeInput.pure(field: 'birthDate');
```

#### DateTimeRangeInput
For date range inputs:

```dart
import 'package:form_builder_z/inputs/date_time_range_input.dart';

DateTimeRangeInput dateRange = const DateTimeRangeInput.pure(field: 'dateRange');
```

#### DoubleInput
For numeric inputs:

```dart
import 'package:form_builder_z/inputs/double_input.dart';

DoubleInput price = const DoubleInput.pure(field: 'price');
```

#### Uint8ListInput
For file/image inputs:

```dart
import 'package:form_builder_z/inputs/uint8_list_input.dart';

Uint8ListInput image = const Uint8ListInput.pure(field: 'image');
```

### Custom Validators

You can use custom validators with any input. For example, with file inputs:

```dart
import 'dart:typed_data';
import 'package:form_builder_z/inputs/uint8_list_input.dart';
import 'package:form_builder_z/validators/file_length_validator.dart';

Uint8ListInput image = const Uint8ListInput.pure(field: 'image');

// In your save method:
image = image.dirty(
  value: fields[image.field] as Uint8List?,
  validators: [
    FileSizeValidator(5 * 1024 * 1024), // 5MB max
  ],
);
```

### Form Validation

The `FormEntity` class provides several methods for validation:

- `validate()` - Validates the form and displays errors
- `saveAndValidate()` - Saves form values and validates
- `isValid` - Boolean property indicating if form is valid
- `errors` - Map of field names to error messages
- `errorList` - List of all error messages

### Accessing Form Values

After validation, access form values:

```dart
// Get all values as a map
Map<String, dynamic> allValues = _form.values;

// Access individual input values
String? name = _form.nameInput.value;
String? email = _form.emailInput.value;
```

## Additional information

This package is built on top of:
- [formz](https://pub.dev/packages/formz) - Form state management
- [flutter_form_builder](https://pub.dev/packages/flutter_form_builder) - Form widgets
- [form_builder_validators](https://pub.dev/packages/form_builder_validators) - Form validation

For more examples, check the `/example` folder in the package repository.
