import "package:flutter/material.dart";
import "package:flutter_form_builder/flutter_form_builder.dart";
import "package:formz/formz.dart";

import "base_input.dart";

/// Base class for all form classes
abstract class BaseForm with FormzMixin {
  /// Base class for all form classes
  const BaseForm({this.formKey});

  /// Key to access the form state
  final GlobalKey<FormBuilderState>? formKey;

  /// Returns the inputs that are part of the form.
  @override
  List<BaseInput> get inputs;

  /// Returns the values of the form as a map.
  Map<String, dynamic> get values {
    final Map<String, dynamic> fields = {};

    for (var input in inputs) {
      fields[input.field] = input.value;
    }

    return fields;
  }

  /// Method that maps the form fields to the respective input values.
  void save(Map<String, dynamic> fields);

  /// Validates the form
  ///
  /// returns true if the form is valid.
  bool validate() {
    if (!isValid) {
      if (formKey == null || formKey!.currentState == null) return false;

      for (var error in errors!.entries) {
        if (error.value == null) continue;

        formKey!.currentState?.fields[error.key]?.invalidate(
          error.value!,
          shouldAutoScrollWhenFocus: true,
        );
      }

      return false;
    }

    return true;
  }

  /// Validates the form and returns true if the form is valid.
  ///
  /// If the [fields] parameter is provided, it will validate the form with the
  /// provided fields. Otherwise, it will validate the form with the current
  /// form key value.
  ///
  /// Throws an exception if the form key or fields value is not provided.
  bool saveAndValidate([Map<String, dynamic>? fields]) {
    if (fields != null) {
      save(fields);
    } else if (formKey != null && formKey!.currentState != null) {
      final form = formKey!.currentState!
        ..save()
        ..validate();

      save(form.value);
    } else {
      throw Exception(
        "Form key or fields value is required to validate the form",
      );
    }

    return validate();
  }

  /// Returns the form message errors for each input.
  ///
  /// Returns null if the form is valid.
  Map<String, String?>? get errors {
    if (isValid) return null;

    final Map<String, String?> errors = {};

    for (var input in inputs) {
      if (input.error != null) {
        errors[input.field] = input.error;
      }
    }

    return errors;
  }

  /// Returns a list of error messages for the form.
  ///
  /// Returns null if the form is valid.
  List<String>? get errorList {
    if (isValid) return null;

    final List<String> errors = [];

    for (var input in inputs) {
      if (input.error != null) {
        errors.add("${input.field}: ${input.error}");
      }
    }

    return errors;
  }
}
