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
  form_builder_z: ^0.2.0
  flutter_form_builder: ^11.0.0
  material_ui: ^1.5.0
  form_builder_validators: ^11.2.0
```

Then run:

```bash
flutter pub get
```

### Migrating to 0.2.0

Version 0.2.0 requires Flutter 3.47.0 and Dart 3.13.0 or later, and uses Flutter
Form Builder 11. Update your SDK before resolving dependencies. This repository
uses Flutter 3.47.6 through FVM.

Import `package:material_ui/material_ui.dart` for Material widgets and for field
arguments such as `InputDecoration`, `DropdownMenuItem`, `DateTimeRange`, and
`RangeValues`. Migrate your app's `MaterialApp`, theme, and Material localization
delegates to the same library. Core widgets and validators can continue using
`package:flutter/widgets.dart`. Existing factory names and your form model's
constructor and `save()` override remain the same.

Errors set through a registered field's `invalidate()` persist when validation
runs again. Editing or resetting the field clears these errors. Visible
registered-field errors appear in `FormWidgetState.errors` and `onFailure`.
Hidden fields retain their errors without blocking widget submission.

The currency calculator bridges its legacy Material widgets internally; the
app does not need to add a compatibility bridge for this field. Custom controls
using legacy Material dependencies may need their own bridge.

## Usage

### Declare a form widget

Extend `FormWidget` and override `fields()` to generate the form and its controls.
This declaration pattern is inspired by [Nylo forms](https://nylo.dev/docs/7.x/forms).
Bind the widget to your existing `FormEntity`: inputs, values, validators, and
`save()` remain in the model. Your page instantiates the form widget directly.

```dart
import 'package:material_ui/material_ui.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/form_builder_z.dart';

class ContactForm extends FormEntity {
  ContactForm({int maxLength = 80, super.formKey})
      : name = InputEntity<String>.pure(
          field: 'name',
          validators: [
            const RequiredValidator(errorText: 'Name is required'),
            MaxLengthValidator(maxLength),
          ],
        ),
        email = const InputEntity<String>.pure(
          field: 'email',
          validators: [EmailValidator(errorText: 'Enter a valid email')],
        );

  InputEntity<String> name;
  InputEntity<String> email;

  @override
  List<InputEntity> get inputs => [name, email];

  @override
  void save(Map<String, dynamic> fields) {
    name = name.dirty(value: fields['name'] as String?);
    email = email.dirty(value: fields['email'] as String?);
  }
}

class ContactFormWidget extends FormWidget<ContactForm> {
  const ContactFormWidget({
    super.key,
    required ContactForm form,
    super.onSubmit,
    super.onFailure,
    super.onChanged,
    super.useDummyValues,
  }) : super(form: form);

  @override
  List<Object> fields() => [
        [Field.text('name', label: 'Name'), Field.email('email', label: 'Email')],
        Field.widget(child: const Divider()),
      ];
}

// Keep the model in page state so rebuilds reuse the same instance.
class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final form = ContactForm();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: ContactFormWidget(
            form: form,
            onSubmit: (values) async {
              // Persist the validated values with your repository here.
              debugPrint(values.toString());
            },
            onFailure: (errors) => debugPrint(errors.toString()),
          ),
        ),
      );
}
```

The widget creates the `FormBuilder`, registered controls, and optional submit
button. Editing a field calls your existing `save()` with a complete typed map.
Mounting leaves inputs pure unless debug dummy values are applied. Widget
validation always resolves current model inputs, including their replacements
after saving.

#### Initial values

Every input's `.pure()` constructor accepts an optional `value`. Set it in the
model before mounting the form; generated fields display it without marking the
input dirty or calling `save()`.

```dart
final name = const InputEntity<String>.pure(field: 'name', value: 'Alex');
final price = const DoubleInput.pure(field: 'price', value: 150.75);
final notifications = const BoolInput.pure(field: 'notifications', value: true);
final date = DateTimeInput.pure(field: 'date', value: DateTime(2026, 10, 5));
final range = DateTimeRangeInput.pure(
  field: 'range',
  value: DateTimeRange(start: DateTime(2026, 10, 5), end: DateTime(2026, 10, 7)),
);
final file = Uint8ListInput.pure(field: 'file', value: Uint8List.fromList([1, 2]));
```

Import `dart:typed_data` for `Uint8List`. Omitted values remain `null`, except
`BoolInput.pure()`, which defaults to `false`. Initial values use the input's
validators. Debug dummy values preserve non-empty model values; set
`useDummyValues: false` to disable autofill for intentionally empty values.

For values loaded after mounting, update the model and rebuild the parent to
synchronize the fields. Keep the form instance outside `build()` to retain edits.

#### Field factories

| Factory | Model value | Presentation |
| --- | --- | --- |
| `Field.text()` | `String?` | Label, decoration, lines, keyboard, input action |
| `Field.email()` | `String?` | Email keyboard |
| `Field.password()` | `String?` | Obscured single-line text with an optional visibility toggle |
| `Field.textArea()` | `String?` | Multiline keyboard and configurable line count |
| `Field.capitalizeWords()` | `String?` | Word capitalization keyboard hint |
| `Field.capitalizeSentences()` | `String?` | Sentence capitalization keyboard hint |
| `Field.url()` | `String?` | URL keyboard and whitespace filtering |
| `Field.phoneNumber()` | `String?` | Country-aware phone formatting and phone keyboard |
| `Field.mask()` | `String?` | Configurable `#` mask; raw characters by default |
| `Field.currency()` | `double?` | Currency formatting, locale, and fractional precision |
| `Field.number()` | `double?` | Numeric keyboard and configurable parsing error |
| `Field.checkbox()` | `bool?` | Label or custom title widget |
| `Field.checkboxGroup<T>()` | `List<T>?` | Multiple selection using checkboxes |
| `Field.switchBox()` | `bool?` | Label or custom switch title |
| `Field.date()` | `DateTime?` | Date picker and optional date bounds |
| `Field.datetime()` | `DateTime?` | Date/time picker and optional date bounds |
| `Field.dateRange()` | `DateTimeRange?` | Required date bounds |
| `Field.dropdown<T>()` | `T?` | Typed `DropdownMenuItem<T>` items |
| `Field.picker<T>()` | `T?` | Bottom-sheet selection with an optional clear button |
| `Field.radio<T>()` | `T?` | Radio selection with configurable orientation |
| `Field.chips<T>()` | `List<T>?` | Multiple selection with typed chip options |
| `Field.choiceChips<T>()` | `T?` | Single selection with choice chips |
| `Field.slider()` | `double?` | Numeric slider with bounds and optional divisions |
| `Field.rangeSlider()` | `RangeValues?` | Range slider with bounds and optional divisions |
| `Field.builder<T>()` | `T?` | Custom registered control |
| `Field.custom<T>()` | `T?` | Alias for the registered-control builder |
| `Field.widget()` | — | Ordinary content excluded from validation and values |

Input factories accept an exact model input name as the first argument, plus
`label`, `decoration`, `enabled`, `hidden`, `readOnly`, and typed `dummyValue`.
Labels never change submitted keys. Text labels default to the supplied
decoration's label, or the input name; an explicit
`label` takes precedence. Checkbox labels appear as the checkbox title.

Factories configure presentation; all validation rules stay in the model. For
example, add an `EmailValidator` to the input to validate `Field.email()`.

Set `viewable: true` to add a trailing show/hide button to a password field:

```dart
Field.password('password', label: 'Password', viewable: true)
```

`viewable` defaults to `false`, and passwords start obscured. When enabled, the
button replaces `decoration.suffixIcon`; other decoration settings are preserved.
Toggling changes only visibility and does not save values or invoke form
callbacks. Visibility survives rebuilds and conditional hiding. Setting
`viewable: false`, binding a new model, or mounting again masks the password.
Disabled fields and forms disable the button; read-only passwords can still
toggle visibility.

The field names cover the [Nylo 7.x field catalog](https://github.com/nylo-core/support/blob/7.x/lib/widgets/src/form/field.dart).
They use this package's model-owned values and validators, typed options, and
registered Flutter Form Builder controls. `custom()` uses the same builder
signature as `builder()` rather than requiring a Nylo widget subclass.

#### Input formatters and specialized fields

All text-entry factories accept `inputFormatters`, applied in list order.
Existing text, email, password, text-area, and number fields default to an empty
list to preserve current input behavior. Use Flutter's formatters or the exported
`FormInputFormatters` helpers:

```dart
import 'package:flutter/services.dart';
import 'package:form_builder_z/form_builder_z.dart';

Field.text('reference', inputFormatters: [
  FilteringTextInputFormatter.digitsOnly,
  LengthLimitingTextInputFormatter(8),
]);
Field.number('quantity', inputFormatters: [
  FormInputFormatters.number(decimal: false, signed: false),
]);
Field.email('email', inputFormatters: [FormInputFormatters.email()]);
Field.password('password', viewable: true, inputFormatters: [
  FormInputFormatters.withoutWhitespace(),
]);
```

`url()` removes whitespace while allowing incomplete URLs during typing; add a
model `UrlValidator` to check completed values. `phoneNumber()` uses Nylo's
`flutter_multi_formatter` phone formatter and accepts an optional ISO country
code via `defaultCountryCode`. Its model value is the displayed phone string.
Capitalization factories set Flutter keyboard hints and retain Unicode text,
punctuation, and the user's entered casing.

`currency()` requires an ISO currency code. It stores a `double` rather than
Nylo's formatted string, displays localized separators, and adds the currency
code as a prefix unless the decoration supplies a prefix. `locale` defaults to
Intl's locale; `decimalDigits` defaults to the currency's precision. Clearing
the field saves `null`. Invalid drafts retain the last accepted amount and
block visible-field validation.

```dart
Field.currency('amount', currency: 'MXN', locale: 'es_MX');
Field.currency('total', currency: 'USD', showCalculator: true);
Field.mask('phoneCode', mask: '###-###', match: r'\d');
```

Set `showCalculator: true` to open a `flutter_simple_calculator` bottom sheet
when the currency field is tapped. It suppresses the device keyboard and uses
the field's locale for calculator entry. The default is `false`, which keeps
device-keyboard editing.

Calculations stay local until **Done**, which completes pending arithmetic and
applies the result once at the currency's configured precision. Pressing `=`
before Done does not repeat the operation. **Clear** followed by Done saves
`null`; calculator C/AC produce numeric zero. Back, tapping outside, or swiping
the sheet down cancels edits. Invalid or incomplete calculations keep the sheet
open for correction. Disabled, hidden, and read-only fields cannot open it.
External value changes and changes to these flags cancel an open session.
Custom `inputFormatters` apply to device-keyboard typing; calculator results
use currency formatting directly.

`mask()` uses `#` placeholders matched by `match` (default `r'[\w\d]'`). It
displays mask punctuation while saving and validating raw characters. Set
`maskReturnValue: true` to save the displayed text instead. Initial values,
debug dummy values, and external updates are encoded for display automatically.
Masks use Nylo's `mask_text_input_formatter` library and keep editing state
synchronized across rebuilds and programmatic updates.

For specialized fields, omitting `inputFormatters` uses the built-in formatter;
passing a list replaces it, and `[]` disables it. Currency parsing and mask
value conversion still apply. The helpers `number()`, `email()`, `url()`,
`phoneNumber()`, `mask()`, and `currency()` also work with ordinary Flutter text
controls. Formatters assist entry; validation rules remain in the model.

#### Selection controls and sliders

`picker()`, `radio()`, `chips()`, `checkboxGroup()`, and `choiceChips()` accept
typed `FormBuilderFieldOption<T>` lists, exported from the package entrypoint.
Pickers open a bottom sheet and
support clearing by default; set `clearable: false` to omit the clear button.
Filter chips (`chips()`) and checkbox groups support multiple selection and
require an `InputEntity<List<T>>`. Choice chips select one value and require an
`InputEntity<T>`. Deselecting all checkboxes saves an empty list; deselecting a
choice chip saves null. Both new factories accept `spacing` and `runSpacing`
(default 8); checkbox groups also support `orientation` (default wrap).

```dart
Field.picker<String>('country', options: const [
  FormBuilderFieldOption(value: 'MX', child: Text('Mexico')),
  FormBuilderFieldOption(value: 'US', child: Text('United States')),
]);
Field.chips<String>('interests', options: const [
  FormBuilderFieldOption(value: 'dart', child: Text('Dart')),
  FormBuilderFieldOption(value: 'flutter', child: Text('Flutter')),
]);
Field.checkboxGroup<String>('contactMethods', options: const [
  FormBuilderFieldOption(value: 'email', child: Text('Email')),
  FormBuilderFieldOption(value: 'sms', child: Text('SMS')),
]);
Field.choiceChips<String>('priority', options: const [
  FormBuilderFieldOption(value: 'normal', child: Text('Normal')),
  FormBuilderFieldOption(value: 'urgent', child: Text('Urgent')),
]);
Field.slider('rating', min: 1, max: 5, divisions: 4);
Field.rangeSlider('budget', min: 0, max: 100);
```

Sliders default to bounds `0..1`. A missing value displays `min` for a slider
or the full range for a range slider, without saving during mounting. The
displayed value is saved on edits or explicit validation. Bounds must be finite
and ordered, divisions must be positive, and supplied values must fit the bounds.
Range sliders use `InputEntity<RangeValues>`. All new inputs support `hidden`,
`readOnly`, `enabled`, typed dummy values, and current model validators.

See `lib/example/nylo_fields_form.dart` for a complete model and widget showing
every newly added factory.

#### Rows, content, and layout

Declare individual fields for vertical items and one-level lists of input fields
for equal-width rows. Use `Field.widget(child: ...)` for dividers, instructions,
or other content. Provide exactly one input field for every model input. Deeper
nested lists, empty rows, and embedded widgets inside rows are rejected.

Override `fields()` in your own form widget to choose the layout:

```dart
@override
List<Object> fields() => [
  [Field.text('firstName'), Field.text('lastName')],
  Field.widget(child: const Text('Contact details')),
  Field.email('email'),
];
```

`mainAxisSpacing` and `crossAxisSpacing` default to 16. Use `padding`, `header`,
and `footer` for surrounding presentation. For a custom layout,
`layoutBuilder(context, children)` receives an ordered list of generated
vertical items, including rows and embedded widgets. Include every generated
input exactly once. The form does not add scrolling.

#### Conditional visibility and read-only fields

Compute `hidden` and `readOnly` in `fields()` from model values or external state.
Both default to `false`. The widget re-evaluates declarations automatically after
saving user edits, so dependent fields update without a page-level callback.
Use `FormWidget<YourFormEntity>` to access your model's typed properties directly.

```dart
@override
List<Object> fields() => [
  Field.checkbox('hasDetails', label: 'Add details'),
  [
    Field.text(
      'details',
      hidden: form.hasDetails.value != true,
      readOnly: locked,
    ),
    Field.number('amount', hidden: form.hasDetails.value != true),
  ],
  Field.widget(
    hidden: form.hasDetails.value != true,
    child: const Text('Optional details'),
  ),
];
```

Keep every input declared and change its `hidden` flag rather than using Dart
`if` to remove declarations. Hidden controls stay mounted offstage: their
accepted values, malformed numeric drafts, and field state are retained, but
they occupy no visible space, semantics, or focus. Rows expand the remaining
visible fields and disappear entirely when all their fields are hidden.
Custom layouts receive only visible items; hidden controls are retained outside
the custom layout.

Hidden fields do not block `FormWidgetState.saveAndValidate()` and are excluded
from widget errors and failure callbacks. Their stored model values remain in
complete save maps and submission snapshots. Showing them again restores their
drafts and validation. Direct `FormEntity.validate()` still checks every model
input, including hidden inputs.

Read-only fields stay visible, retain their values, and still validate. Text
controls allow selection and copying while preventing edits; other controls
block pointer and keyboard changes. Custom builders receive `state.enabled ==
false` when read-only. Programmatic model updates work for hidden and read-only
fields; rebuild the parent after an external update or a change to external
condition state. `Field.widget()` also accepts `hidden` and `readOnly` for
ordinary content.

See `lib/example/conditional_form.dart` for the complete model and widget.

#### Debug dummy values

Declare optional sample values alongside the fields to speed up development:

```dart
@override
List<Object> fields() => [
  Field.text('name', label: 'Name', dummyValue: 'Alex'),
  Field.email('email', dummyValue: 'alex@example.com'),
];
```

Every input factory accepts a `dummyValue` of its model type, including dates,
dropdown choices, and custom controls. `Field.widget()` has no dummy value.
Values apply only when Flutter's `kDebugMode` is true and `useDummyValues` is
enabled (the default). They never apply in profile or release builds. Expose
`super.useDummyValues` in your form widget constructor to let callers opt out:

```dart
const ContactFormWidget({
  super.key,
  required super.form,
  super.useDummyValues,
});

// Preserve the empty form during debugging:
ContactFormWidget(form: form, useDummyValues: false);
```

Only pure inputs containing `null`, blank text, or an empty collection receive
dummy values. Existing populated values, `false`, `0`, and all dirty inputs
(including values the user cleared) are preserved. Consequently a default
`BoolInput.pure()` retains its existing `false` value. A `null` dummy value means
no autofill.

Initialization runs once per model instance before the generated controls mount,
including hidden, disabled, and read-only inputs. It merges dummy values into
the complete model map and calls your existing `save()` once, which may mark all
inputs dirty according to your implementation. It does not invoke `onChanged`,
`onFailure`, or `onSubmit`. Model validators still apply to the resulting values.
The widget re-evaluates conditions after this save so visibility reflects the
seeded model immediately.

Rebuilds, changed declarations, cleared values, and remounting the same processed
model never refill it. A new model initializes independently. The option is read
when a model is first bound; toggling it on later in the same widget does not
trigger autofill. A model mounted with autofill disabled may initialize on a
later enabled mount.

See `lib/example/example_form_widget.dart` for a form with a sample text value.

#### Submission and callbacks

Supply `onSubmit` to generate a submit button. It receives an unmodifiable map
snapshot only after visible model inputs and widget drafts validate. Async callbacks show
busy state and disable repeated submission. Exceptions go through Flutter's
error reporting and the button is restored. Use `submitLabel` or
`submitButtonBuilder(context, submit, busy)` to customize the button.

`onFailure` receives a field-name-to-message map after failed explicit validation
or submission, including numeric conversion errors. Callback maps are
unmodifiable. `onChanged(fieldName, typedValue)` runs after saving; on an invalid
numeric draft it reports the model's last accepted value.

Omit `onSubmit` to omit the button. An external action can give the widget a
`GlobalKey<FormWidgetState>` and call
`formWidgetKey.currentState!.saveAndValidate()`. Its state also exposes `errors`
and `isSubmitting`. The widget reuses `form.formKey` when supplied, otherwise it
manages an internal key. Setting `enabled: false` disables controls and
submission. Autovalidation defaults to `AutovalidateMode.onUserInteraction`.

#### Custom controls and files

Use the registered field state's `didChange()` and respect `state.enabled`.
The package displays errors in an `InputDecorator`. No file-picker dependency
is added; supply your application's picker:

```dart
import 'dart:typed_data';

Field<Uint8List> fileField(Future<Uint8List?> Function() pickFile) =>
    Field.builder<Uint8List>(
      'file', // Matches an existing Uint8ListInput in your form.
      label: 'Attachment',
      builder: (context, state) => TextButton(
        onPressed: state.enabled ? () async {
          final bytes = await pickFile();
          if (state.mounted && bytes != null) state.didChange(bytes);
        } : null,
        child: const Text('Choose file'),
      ),
    );
```

#### Compatibility and state

Existing model-only forms, imports, manual `FormBuilder` widgets, and validation
methods continue to work. Your subclass still overrides `save()` to assign
updated inputs; the unchanged base implementation does not retain replacements.

Empty numeric text maps to `null`. Malformed numeric text stays visible and
blocks widget submission while retaining the last accepted number in the model.
Direct model validation checks all stored values; widget validation checks
visible inputs and conversion errors in their drafts.

Rebuilds retain drafts. Update the model and rebuild the parent to synchronize
changed values without another save. Validator changes are read from current
inputs. Keep input names, types, and declaration layout fixed while mounted;
presentation settings may change. Switching model instances recreates field
state. Mount each model in only one `FormWidget` at a time. No notifier or model
disposal requirement is added.

See `lib/example/example_form_widget.dart` for a reusable form widget over the
existing example model.

### Manual Widget Example


Here's a simple example of creating a form with validation:

```dart
import 'package:material_ui/material_ui.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/models/form_entity.dart';
import 'package:form_builder_z/models/input_entity.dart';
import 'package:form_builder_z/inputs/bool_input.dart';
import 'package:form_builder_z/inputs/double_input.dart';

// 1. Define your form class extending FormEntity
class UserForm extends FormEntity {
  UserForm({
    InputEntity<String>? nameInput,
    InputEntity<String>? emailInput,
    DoubleInput? ageInput,
    BoolInput? agreeToTerms,
    int minNameLength = 3,
    super.formKey,
  })  : nameInput = nameInput ?? InputEntity<String>.pure(
          field: 'name',
          validators: [
            const RequiredValidator(errorText: 'Name is required'),
            MinLengthValidator(minNameLength),
          ],
        ),
        emailInput = emailInput ?? const InputEntity<String>.pure(
          field: 'email',
          validators: [RequiredValidator(), EmailValidator()],
        ),
        ageInput = ageInput ?? const DoubleInput.pure(
          field: 'age',
          validators: [RequiredValidator(), NumericValidator()],
        ),
        agreeToTerms = agreeToTerms ?? const BoolInput.pure(
          field: 'agreeToTerms',
          validators: [RequiredValidator()],
        );

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
    nameInput = nameInput.dirty(value: fields[nameInput.field] as String?);
    emailInput = emailInput.dirty(value: fields[emailInput.field] as String?);
    ageInput = ageInput.dirty(
      value: fields[ageInput.field] != null
          ? double.tryParse(fields[ageInput.field].toString())
          : null,
    );
    agreeToTerms = agreeToTerms.dirty(
      value: fields[agreeToTerms.field] as bool? ?? false,
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

Constructor default parameter values must be constant in Dart. Use a nullable input
parameter and initialize its default in the constructor initializer to use runtime
validator settings, such as `minNameLength` above. A `const` input constructor can
also be called without `const` to accept runtime validators.

Validators run on pure inputs too: `UserForm().validate()` returns `false` before
saving because required values are missing. Calling `dirty(value: ...)` preserves
configured validators; passing `validators: []` explicitly clears them.

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

final maxBytes = 5 * 1024 * 1024;
Uint8ListInput image = Uint8ListInput.pure(
  field: 'image',
  validators: [FileSizeValidator(maxBytes)],
);

// In your save method, the validators are retained:
image = image.dirty(value: fields[image.field] as Uint8List?);
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

## Generating validator translations

Edit the ARB files in `lib/validators/l10n`, then run:

```sh
dart run intl_utils:generate
```

The main locale is Spanish (`flutter_intl.main_locale: es` in `pubspec.yaml`).
It defines the generated methods and their arguments. Every placeholder used in
a translation, such as `{colorCode}`, must also be present in the corresponding
Spanish message. Translations may omit an argument when their wording does not
need it. Keep the Spanish argument order consistent with validator calls,
especially `fileSizeErrorText(fileSize, maxSize)`.

Use `FormBuilderZLocalizations.delegate` and its `supportedLocales` from
`package:form_builder_z/validators/form_builder_z_validators.dart` to register
these translations. Generated files in `lib/validators/localization` are
replaced by the command; edit the ARB sources instead.

## Additional information

This package is built on top of:
- [formz](https://pub.dev/packages/formz) - Form state management
- [flutter_form_builder](https://pub.dev/packages/flutter_form_builder) - Form widgets
- [form_builder_validators](https://pub.dev/packages/form_builder_validators) - Form validation

For more examples, check the `/example` folder in the package repository.
