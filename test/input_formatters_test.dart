import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_z/form_builder_z.dart';

TextEditingValue edit(String text) => TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );

void main() {
  test('numeric formatters allow partial edits and reject malformed numbers',
      () {
    final formatter = FormInputFormatters.number();
    for (final text in ['', '-', '+', '.', '-.', '-12.5', '0.25']) {
      expect(formatter.formatEditUpdate(edit(''), edit(text)).text, text);
    }
    for (final text in ['12a', '1.2.3', '2-3']) {
      expect(formatter.formatEditUpdate(edit('12'), edit(text)).text, '12');
    }
    final integer = FormInputFormatters.number(decimal: false, signed: false);
    expect(integer.formatEditUpdate(edit('1'), edit('123')).text, '123');
    expect(integer.formatEditUpdate(edit('1'), edit('-2')).text, '1');
    expect(integer.formatEditUpdate(edit('1'), edit('2.5')).text, '1');
  });

  test('numeric formatters do not interrupt IME composition', () {
    final composing =
        edit('12a').copyWith(composing: const TextRange(start: 0, end: 3));
    expect(FormInputFormatters.number().formatEditUpdate(edit('12'), composing),
        composing);
  });

  test('URL and email formatters allow progressive entry and remove spaces',
      () {
    for (final formatter in [
      FormInputFormatters.url(),
      FormInputFormatters.email(),
    ]) {
      expect(formatter.formatEditUpdate(edit(''), edit('ex')).text, 'ex');
      expect(
          formatter
              .formatEditUpdate(edit(''), edit('https://example.com/a?x=1'))
              .text,
          'https://example.com/a?x=1');
      expect(formatter.formatEditUpdate(edit(''), edit(' a @b.com ')).text,
          'a@b.com');
    }
  });

  test('mask formatter handles fresh instances, deletion, and clearing', () {
    TextInputFormatter formatter() =>
        FormInputFormatters.mask(mask: '###-###', match: r'\d');
    expect(
        formatter().formatEditUpdate(edit(''), edit('123456')).text, '123-456');
    expect(formatter().formatEditUpdate(edit('123-456'), edit('123-45')).text,
        '123-45');
    expect(formatter().formatEditUpdate(edit('123-456'), edit('')).text, '');
    expect(formatter().formatEditUpdate(edit('654-321'), edit('654-3219')).text,
        '654-321');
    expect(
        formatter().formatEditUpdate(edit(''), edit('12ab34')).text, '123-4');
  });

  test('mask formatter does not interrupt IME composition', () {
    final composing =
        edit('12').copyWith(composing: const TextRange(start: 0, end: 2));
    expect(
        FormInputFormatters.mask(mask: '##-##')
            .formatEditUpdate(edit(''), composing),
        composing);
  });

  test('currency formatters format and parse dot and comma decimal amounts',
      () {
    final usd = FormInputFormatters.currency(currency: 'USD', locale: 'en_US');
    final eur = FormInputFormatters.currency(currency: 'EUR', locale: 'de_DE');
    expect(usd.formatAmount(1234.5), '1,234.50');
    expect(usd.parseAmount('1,234.50'), 1234.5);
    expect(usd.parseAmount('-12.50'), -12.5);
    expect(eur.formatAmount(1234.5), '1.234,50');
    expect(eur.parseAmount('1.234,50'), 1234.5);
    expect(eur.parseAmount('-12,50'), -12.5);
    expect(usd.parseAmount(''), isNull);
    expect(() => usd.parseAmount('invalid'), throwsFormatException);
    expect(() => usd.parseAmount('NaN'), throwsFormatException);
    expect(usd.formatEditUpdate(edit('1,234.50'), edit('')).text, '');
    expect(usd.formatEditUpdate(edit(''), edit('1234.5')).text, '1,234.50');
    expect(eur.formatEditUpdate(edit(''), edit('1234,5')).text, '1.234,50');
  });

  test('currency keeps the caret before padding for incremental integer entry',
      () {
    final formatter =
        FormInputFormatters.currency(currency: 'USD', locale: 'en_US');
    final first = formatter.formatEditUpdate(edit(''), edit('1'));
    expect(first.text, '1.00');
    expect(first.selection.baseOffset, 1);
    final next = first.copyWith(
      text: '12.00',
      selection: const TextSelection.collapsed(offset: 2),
    );
    final result = formatter.formatEditUpdate(first, next);
    expect(result.text, '12.00');
    expect(result.selection.baseOffset, 2);
  });

  test(
      'currency formatter supports zero decimal currencies and rejects bad precision',
      () {
    final yen = FormInputFormatters.currency(currency: 'JPY', locale: 'en_US');
    expect(yen.fractionDigits, 0);
    expect(yen.formatAmount(1234), '1,234');
    expect(yen.parseAmount('1,234'), 1234.0);
    expect(
        () => FormInputFormatters.currency(currency: 'USD', decimalDigits: -1),
        throwsArgumentError);
  });

  test('phone formatter formats international input and retains digits', () {
    final formatted = FormInputFormatters.phoneNumber()
        .formatEditUpdate(edit(''), edit('+12125551234'))
        .text;
    expect(formatted.replaceAll(RegExp(r'\D'), ''), '12125551234');
    expect(formatted, isNot('+12125551234'));
  });
}
