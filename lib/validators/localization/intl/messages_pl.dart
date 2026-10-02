// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pl';

  static String m0(min, max) => "Wartość musi być pomiędzy ${min} a ${max}.";

  static String m1(colorCode) => "To pole wymaga prawidłowego kodu koloru.";

  static String m2(value) => "Wartość musi zawierać ${value}.";

  static String m3(min) => "To pole musi zawierać małą literę.";

  static String m4(min) => "To pole musi zawierać cyfrę.";

  static String m5(min) => "To pole musi zawierać znak specjalny.";

  static String m6(min) => "To pole musi zawierać wielką literę.";

  static String m7(min, max) => "Data musi być w dozwolonym zakresie.";

  static String m8(value) => "Wartość musi kończyć się na ${value}.";

  static String m9(value) => "Wartość tego pola musi wynosić ${value}.";

  static String m10(length) => "Wartość musi mieć długość równą ${length}.";

  static String m11(extensions) =>
      "To pole wymaga prawidłowego rozszerzenia pliku.";

  static String m12(fileSize, maxSize) =>
      "Plik przekracza maksymalny dozwolony rozmiar.";

  static String m13(max) => "Wartość musi być mniejsza lub równa ${max}.";

  static String m14(maxLength) =>
      "Wartość nie może mieć więcej niż ${maxLength} znaków.";

  static String m15(maxWordsCount) =>
      "Wartość musi mieć liczbę słów mniejszych lub równych ${maxWordsCount}.";

  static String m16(min) => "Wartość musi być większa lub równa ${min}.";

  static String m17(minLength) =>
      "Wartość musi mieć co najmniej ${minLength} znaków.";

  static String m18(minWordsCount) =>
      "Wartość musi mieć liczbę słów większą lub równą ${minWordsCount}.";

  static String m19(value) => "Wartość tego pola nie może być ${value}.";

  static String m20(min, max) => "To pole wymaga prawidłowego numeru portu.";

  static String m21(value) => "Wartość musi zaczynać się od ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole może zawierać tylko litery.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego ciągu Base64.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego numeru BIC.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłową nazwą miasta.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być na liście dozwolonych wartości.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłowym krajem.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego kodu CVC karty kredytowej.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga podania ważnego numeru karty kredytowej.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowej daty ważności karty kredytowej.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Karta kredytowa straciła ważność.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Data musi być w przyszłości.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Data musi być w przeszłości.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowej daty.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłowym numerem DUNS.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego adresu e-mail.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga liczby parzystej.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłową nazwą pliku.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłowym imieniem.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłową liczbą zmiennoprzecinkową.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłową liczbą szesnastkową.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego numeru IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być liczbą całkowitą.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Nieprawidłowy typ MIME.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego adresu IP.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego numeru ISBN.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłowym kodem języka.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłowym nazwiskiem.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowej szerokości geograficznej.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłowym numerem tablicy rejestracyjnej.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowej długości geograficznej.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga małych liter.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego adresu MAC.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość nie pasuje do oczekiwanego wzorca.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole musi być fałszywe.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole musi być prawdziwe.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być liczbą ujemną.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość nie może być zerem.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być liczbą.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga liczby nieparzystej.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłowym numerem paszportu.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowej ścieżki.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego numeru telefonu.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być liczbą dodatnią.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być liczbą pierwszą.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole nie może być puste.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga pojedynczej linii tekstu.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłowym numerem ubezpieczenia społecznego.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłowym stanem.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłową nazwą ulicy.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowej godziny.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłową strefą czasową.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga unikalnej wartości.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga wielkich liter.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego adresu URL.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nazwa użytkownika nie może zawierać myślników.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Nazwa użytkownika nie może zawierać kropek.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nazwa użytkownika nie może zawierać cyfr.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nazwa użytkownika nie może zawierać spacji.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nazwa użytkownika nie może zawierać znaków specjalnych.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nazwa użytkownika nie może zawierać podkreślenia.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłową nazwą użytkownika.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "To pole wymaga prawidłowego UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłowym numerem VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Wartość musi być prawidłowym kodem pocztowym.",
    ),
  };
}
