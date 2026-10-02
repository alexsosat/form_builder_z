import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_builder_z/form_builder_z.dart';

import 'form_widget_test.dart' show TestFormWidget, host, enter;

class PasswordForm extends FormEntity {
  PasswordForm({String? value})
      : password = InputEntity<String>.pure(
          field: 'password',
          value: value,
          validators: const [RequiredValidator(errorText: 'Password required')],
        ),
        super(formKey: GlobalKey<FormBuilderState>());

  InputEntity<String> password;
  int saves = 0;

  @override
  List<InputEntity> get inputs => [password];

  @override
  void save(Map<String, dynamic> values) {
    saves++;
    password = password.dirty(value: values['password'] as String?);
  }
}

FormBuilderTextField passwordField(WidgetTester tester) =>
    tester.widget<FormBuilderTextField>(find.byKey(const ValueKey('password')));

EditableText passwordEditor(WidgetTester tester) =>
    tester.widget<EditableText>(find.descendant(
      of: find.byKey(const ValueKey('password')),
      matching: find.byType(EditableText),
    ));

Future<void> togglePassword(WidgetTester tester, String tooltip) async {
  final toggle = find.byTooltip(tooltip);
  await tester.ensureVisible(toggle);
  await tester.tap(toggle);
  await tester.pump();
}

void main() {
  testWidgets('passwords stay obscured without an opt-in toggle',
      (tester) async {
    final form = PasswordForm(value: 'secret');
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      declarations: [
        Field.password('password',
            decoration: const InputDecoration(suffixIcon: Icon(Icons.lock))),
      ],
    )));
    expect(passwordField(tester).obscureText, isTrue);
    expect(find.byIcon(Icons.lock), findsOneWidget);
    expect(find.byTooltip('Show password'), findsNothing);
    expect(find.byTooltip('Hide password'), findsNothing);
    expect(form.saves, 0);
  });

  testWidgets('toggle preserves value, registration, controller and selection',
      (tester) async {
    final form = PasswordForm();
    var changes = 0;
    var failures = 0;
    var submissions = 0;
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      declarations: [Field.password('password', viewable: true)],
      onChanged: (_, value) => changes++,
      onFailure: (_) => failures++,
      onSubmit: (_) => submissions++,
    )));
    expect(passwordField(tester).obscureText, isTrue);
    expect(find.byIcon(Icons.visibility), findsOneWidget);
    await enter(tester, 'password', 'secret123');
    final registered = form.formKey!.currentState!.fields['password'];
    final input = form.password;
    final controller = passwordEditor(tester).controller;
    controller.selection = const TextSelection.collapsed(offset: 3);
    await tester.pump();
    final editingValue = controller.value;
    final saves = form.saves;
    final edits = changes;
    for (final tooltip in ['Show password', 'Hide password']) {
      await togglePassword(tester, tooltip);
      expect(passwordField(tester).obscureText, tooltip == 'Hide password');
      expect(
          find.byTooltip(
              tooltip == 'Show password' ? 'Hide password' : 'Show password'),
          findsOneWidget);
      expect(
          find.byIcon(tooltip == 'Show password'
              ? Icons.visibility_off
              : Icons.visibility),
          findsOneWidget);
      expect(passwordEditor(tester).controller, same(controller));
      expect(controller.value, editingValue);
      expect(form.formKey!.currentState!.fields['password'], same(registered));
      expect(form.password, same(input));
      expect(form.password.value, 'secret123');
      expect(form.saves, saves);
      expect(changes, edits);
      expect(failures, 0);
      expect(submissions, 0);
    }
    expect(find.byTooltip('Show password'), findsOneWidget);
  });

  testWidgets('visibility survives rebuilds and conditional hiding',
      (tester) async {
    final form = PasswordForm(value: 'secret');
    var hidden = false;
    Widget page() => host(TestFormWidget(
          form: form,
          declarations: [
            Field.password('password', viewable: true, hidden: hidden),
          ],
        ));
    await tester.pumpWidget(page());
    await togglePassword(tester, 'Show password');
    final registered = form.formKey!.currentState!.fields['password'];
    await tester.pumpWidget(page());
    expect(passwordField(tester).obscureText, isFalse);
    hidden = true;
    await tester.pumpWidget(page());
    expect(find.byTooltip('Hide password'), findsNothing);
    expect(form.formKey!.currentState!.fields['password'], same(registered));
    hidden = false;
    await tester.pumpWidget(page());
    expect(passwordField(tester).obscureText, isFalse);
    expect(find.byTooltip('Hide password'), findsOneWidget);
    expect(form.saves, 0);
  });

  testWidgets('changing viewable restores the suffix and remasks the password',
      (tester) async {
    final form = PasswordForm(value: 'secret');
    var viewable = true;
    Widget page() => host(TestFormWidget(
          form: form,
          declarations: [
            Field.password('password',
                viewable: viewable,
                label: 'Secret',
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: Icon(Icons.lock),
                  helperText: 'Keep private',
                )),
          ],
        ));
    await tester.pumpWidget(page());
    final registered = form.formKey!.currentState!.fields['password'];
    expect(find.byIcon(Icons.lock), findsNothing);
    expect(find.byIcon(Icons.key), findsOneWidget);
    expect(passwordField(tester).decoration.labelText, 'Secret');
    expect(passwordField(tester).decoration.helperText, 'Keep private');
    await togglePassword(tester, 'Show password');
    viewable = false;
    await tester.pumpWidget(page());
    expect(passwordField(tester).obscureText, isTrue);
    expect(find.byIcon(Icons.lock), findsOneWidget);
    expect(find.byTooltip('Show password'), findsNothing);
    expect(find.byTooltip('Hide password'), findsNothing);
    expect(form.formKey!.currentState!.fields['password'], same(registered));
    viewable = true;
    await tester.pumpWidget(page());
    expect(passwordField(tester).obscureText, isTrue);
    expect(find.byIcon(Icons.lock), findsNothing);
    expect(find.byTooltip('Show password'), findsOneWidget);
    expect(form.formKey!.currentState!.fields['password'], same(registered));
    expect(form.password.value, 'secret');
    expect(form.saves, 0);
  });

  testWidgets('new models and fresh mounts start obscured', (tester) async {
    final first = PasswordForm(value: 'first');
    final second = PasswordForm(value: 'second');
    final key = GlobalKey<FormWidgetState>();
    Widget page(PasswordForm form) => host(TestFormWidget(
          key: key,
          form: form,
          declarations: [Field.password('password', viewable: true)],
        ));
    await tester.pumpWidget(page(first));
    await togglePassword(tester, 'Show password');
    await tester.pumpWidget(page(second));
    expect(passwordField(tester).obscureText, isTrue);
    expect(passwordEditor(tester).controller.text, 'second');
    await togglePassword(tester, 'Show password');
    await tester.pumpWidget(const SizedBox());
    await tester.pumpWidget(page(second));
    expect(passwordField(tester).obscureText, isTrue);
    expect(find.byTooltip('Show password'), findsOneWidget);
    expect(second.saves, 0);
    expect(tester.takeException(), isNull);
  });

  testWidgets('disabled fields and forms disable the visibility button',
      (tester) async {
    final form = PasswordForm(value: 'secret');
    for (final (formEnabled, fieldEnabled) in [(true, false), (false, true)]) {
      await tester.pumpWidget(host(TestFormWidget(
        form: form,
        enabled: formEnabled,
        declarations: [
          Field.password('password', viewable: true, enabled: fieldEnabled),
        ],
      )));
      final button = tester.widget<IconButton>(find.byType(IconButton));
      expect(button.onPressed, isNull);
      await tester.tap(find.byTooltip('Show password'), warnIfMissed: false);
      await tester.pump();
      expect(passwordField(tester).obscureText, isTrue);
      expect(form.saves, 0);
    }
  });

  testWidgets('read-only passwords can toggle visibility without editing',
      (tester) async {
    final form = PasswordForm(value: 'secret');
    await tester.pumpWidget(host(TestFormWidget(
      form: form,
      declarations: [
        Field.password('password', viewable: true, readOnly: true),
      ],
    )));
    await togglePassword(tester, 'Show password');
    expect(passwordField(tester).obscureText, isFalse);
    expect(passwordEditor(tester).readOnly, isTrue);
    expect(form.password.value, 'secret');
    expect(form.saves, 0);
  });

  testWidgets('toggling retains validation errors without failure callbacks',
      (tester) async {
    final form = PasswordForm();
    final key = GlobalKey<FormWidgetState>();
    var failures = 0;
    await tester.pumpWidget(host(TestFormWidget(
      key: key,
      form: form,
      declarations: [Field.password('password', viewable: true)],
      onFailure: (_) => failures++,
    )));
    expect(key.currentState!.saveAndValidate(), isFalse);
    await tester.pump();
    final saves = form.saves;
    await togglePassword(tester, 'Show password');
    expect(find.text('Password required'), findsOneWidget);
    expect(key.currentState!.errors, {'password': 'Password required'});
    expect(failures, 1);
    expect(form.saves, saves);
  });
}
