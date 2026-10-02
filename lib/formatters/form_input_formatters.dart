import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

/// Reusable formatters for typed form fields and ordinary Flutter text controls.
abstract final class FormInputFormatters {
  static TextInputFormatter withoutWhitespace() =>
      FilteringTextInputFormatter.deny(RegExp(r'\s'));

  /// Allows partial URLs; complete URL validation belongs in the model.
  static TextInputFormatter url() => withoutWhitespace();

  static TextInputFormatter email() => withoutWhitespace();

  /// Accepts intermediate edits such as '-', '.', and '-.' without corrupting
  /// the text. A field's validator still decides whether an edit is complete.
  static TextInputFormatter number({bool decimal = true, bool signed = true}) =>
      _NumberInputFormatter(decimal: decimal, signed: signed);

  static TextInputFormatter phoneNumber({String? defaultCountryCode}) =>
      PhoneInputFormatter(defaultCountryCode: defaultCountryCode);

  static TextInputFormatter mask({
    required String mask,
    String match = r'[\w\d]',
  }) =>
      _SynchronizedMaskFormatter(mask: mask, match: match);

  static CurrencyTextInputFormatter currency({
    required String currency,
    String? locale,
    int? decimalDigits,
  }) =>
      CurrencyTextInputFormatter(
          currency: currency, locale: locale, decimalDigits: decimalDigits);
}

class _NumberInputFormatter extends TextInputFormatter {
  _NumberInputFormatter({required bool decimal, required bool signed})
      : _pattern = RegExp('^${signed ? r'[+-]?' : ''}'
            '${decimal ? r'\d*(?:\.\d*)?' : r'\d*'}\$');

  final RegExp _pattern;

  @override
  TextEditingValue formatEditUpdate(
          TextEditingValue oldValue, TextEditingValue newValue) =>
      !newValue.composing.isCollapsed || _pattern.hasMatch(newValue.text)
          ? newValue
          : oldValue;
}

/// Resynchronizes after initial values, external patches, clearing, or rebuilds.
class _SynchronizedMaskFormatter extends TextInputFormatter {
  _SynchronizedMaskFormatter({required String mask, required String match})
      : _formatter =
            MaskTextInputFormatter(mask: mask, filter: {'#': RegExp(match)});

  final MaskTextInputFormatter _formatter;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (!newValue.composing.isCollapsed) return newValue;
    _formatter.updateMask(mask: _formatter.getMask(), newValue: oldValue);
    return _formatter.formatEditUpdate(oldValue, newValue);
  }
}

/// Formats currency amounts while keeping the model value a double.
/// The symbol is available separately for use in InputDecoration.prefixText.
class CurrencyTextInputFormatter extends TextInputFormatter {
  CurrencyTextInputFormatter({
    required String currency,
    String? locale,
    int? decimalDigits,
  }) : _format = NumberFormat.currency(
            name: currency, locale: locale, decimalDigits: decimalDigits) {
    if (decimalDigits != null && decimalDigits < 0) {
      throw ArgumentError.value(decimalDigits, 'decimalDigits', 'Must be >= 0');
    }
    final group = _format.symbols.GROUP_SEP;
    _amountFormat = NumberFormat.currency(
        name: currency,
        locale: locale,
        decimalDigits: decimalDigits,
        symbol: '');
    final commaDecimal = decimalSeparator == ',';
    _separator = group == '.'
        ? ThousandSeparator.Period
        : group == ','
            ? ThousandSeparator.Comma
            : commaDecimal
                ? ThousandSeparator.SpaceAndCommaMantissa
                : ThousandSeparator.SpaceAndPeriodMantissa;
    _formatter = CurrencyInputFormatter(
        thousandSeparator: _separator, mantissaLength: fractionDigits);
  }

  final NumberFormat _format;
  late final NumberFormat _amountFormat;
  late final ThousandSeparator _separator;
  late final CurrencyInputFormatter _formatter;

  String get currencySymbol => _format.currencySymbol;
  String get decimalSeparator => _format.symbols.DECIMAL_SEP;
  int get fractionDigits => _format.decimalDigits ?? 2;

  String formatAmount(double value) {
    if (!value.isFinite) {
      throw ArgumentError.value(value, 'value', 'Amount must be finite');
    }
    return _amountFormat.format(value).trim();
  }

  double? parseAmount(String? value) {
    if (value == null || value.trim().isEmpty) return null;
    final group = _separator == ThousandSeparator.Comma
        ? ','
        : _separator == ThousandSeparator.Period
            ? '.'
            : ' ';
    final normalized = value
        .trim()
        .replaceAll(group, '')
        .replaceAll('\u00a0', '')
        .replaceAll('\u202f', '')
        .replaceAll(decimalSeparator, '.');
    if (!RegExp(r'^[+-]?(?:\d+(?:\.\d*)?|\.\d+)$').hasMatch(normalized)) {
      throw const FormatException('Enter a valid amount');
    }
    final amount = double.tryParse(normalized);
    if (amount == null || !amount.isFinite) {
      throw const FormatException('Enter a valid amount');
    }
    return amount;
  }

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty || !newValue.composing.isCollapsed) {
      return newValue;
    }
    if (['-', '+', decimalSeparator, '-$decimalSeparator', '+$decimalSeparator']
        .contains(newValue.text)) {
      return newValue;
    }
    final formatted = _formatter.formatEditUpdate(oldValue, newValue);
    // The upstream formatter rejects a decimal separator pasted into an empty
    // field. Treat initial input as a complete amount and retain the logical caret.
    if (oldValue.text.isEmpty) {
      try {
        final amount = parseAmount(newValue.text);
        if (amount == null) return newValue;
        final text = formatAmount(amount);
        final end = newValue.selection.isValid
            ? newValue.selection.end.clamp(0, newValue.text.length)
            : newValue.text.length;
        bool significant(String char) =>
            RegExp(r'[0-9+-]').hasMatch(char) || char == decimalSeparator;
        var remaining =
            newValue.text.substring(0, end).split('').where(significant).length;
        var offset = 0;
        while (offset < text.length && remaining > 0) {
          if (significant(text[offset])) remaining--;
          offset++;
        }
        return TextEditingValue(
            text: text, selection: TextSelection.collapsed(offset: offset));
      } on FormatException {
        return formatted;
      }
    }
    return formatted;
  }
}
