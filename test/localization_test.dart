import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_z/validators/form_builder_z_validators.dart';
import 'package:intl/intl.dart';

void main() {
  final placeholderPattern = RegExp(r'\{(\w+)\}');
  Set<String> placeholders(String message) => placeholderPattern
      .allMatches(message)
      .map((match) => match.group(1)!)
      .toSet();

  test('translations only use placeholders defined by the main locale', () {
    final config = File('pubspec.yaml').readAsStringSync();
    final mainLocale = RegExp(r'^\s+main_locale:\s+(\w+)', multiLine: true)
        .firstMatch(config)!
        .group(1)!;
    final directory = Directory('lib/validators/l10n');
    final main = jsonDecode(
      File('${directory.path}/intl_$mainLocale.arb').readAsStringSync(),
    ) as Map<String, dynamic>;

    for (final file in directory.listSync().whereType<File>()) {
      if (!file.path.endsWith('.arb')) continue;
      final messages =
          jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      for (final entry in messages.entries) {
        if (entry.key.startsWith('@')) continue;
        expect(main, contains(entry.key), reason: file.path);
        final unknown = placeholders(entry.value as String)
            .difference(placeholders(main[entry.key] as String));
        expect(unknown, isEmpty,
            reason: '${file.path}: ${entry.key} has placeholders missing '
                'from the main locale');
      }
    }
  });

  test('parameterized messages load in every supported locale', () async {
    final previousLocale = Intl.defaultLocale;
    addTearDown(() => Intl.defaultLocale = previousLocale);
    for (final locale in FormBuilderZLocalizations.delegate.supportedLocales) {
      final messages = await FormBuilderZLocalizations.load(locale);
      final results = [
        messages.colorCodeErrorText('hex'),
        messages.fileExtensionErrorText('pdf'),
        messages.fileSizeErrorText('2 MB', '1 MB'),
        messages.dateRangeErrorText('2026-01-01', '2026-12-31'),
        messages.containsSpecialCharErrorText(3),
        messages.containsUppercaseCharErrorText(3),
        messages.containsLowercaseCharErrorText(3),
        messages.containsNumberErrorText(3),
        messages.portNumberErrorText(10, 20),
      ];
      for (final message in results) {
        expect(message, isNotEmpty, reason: locale.toString());
        expect(placeholders(message), isEmpty, reason: locale.toString());
      }
      if (locale.languageCode == 'es') {
        expect(messages.colorCodeErrorText('hex'), contains('hex'));
        expect(messages.fileSizeErrorText('2 MB', '1 MB'),
            'El tamaño del archivo (2 MB) debe ser menor que 1 MB.');
      }
      if (locale.languageCode == 'en') {
        expect(messages.colorCodeErrorText('hex'), contains('hex'));
        expect(messages.fileSizeErrorText('2 MB', '1 MB'),
            'File size must be less than 1 MB while it is 2 MB.');
        expect(messages.portNumberErrorText(10, 20),
            'Value must be a valid port number between 10 and 20.');
      }
    }
  });
}
