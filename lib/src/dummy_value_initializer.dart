import 'package:flutter/foundation.dart';

import '../fields/field.dart';
import '../models/form_entity.dart';

/// Internal policy separated from the widget so all build modes can be tested.
/// Production callers always supply Flutter's kDebugMode.
@internal
class DummyValueInitializer {
  final _processed = Expando<bool>();

  /// Returns true only when a complete-map save applied dummy values.
  bool apply(
    FormEntity form,
    List<Field> fields, {
    required bool isDebugMode,
    required bool enabled,
  }) {
    if (!isDebugMode || !enabled || _processed[form] == true) return false;
    final values = Map<String, dynamic>.of(form.values);
    var changed = false;
    for (final field in fields) {
      if (!field.isInput || field.dummyValue == null) continue;
      final input = field.inputFor(form);
      if (!input.isPure || !_isEmpty(input.value)) continue;
      values[field.name] = field.dummyValue;
      changed = true;
    }
    if (changed) form.save(values);
    _processed[form] = true;
    return changed;
  }

  bool _isEmpty(Object? value) =>
      value == null ||
      (value is String && value.trim().isEmpty) ||
      (value is Iterable && value.isEmpty) ||
      (value is Map && value.isEmpty);
}
