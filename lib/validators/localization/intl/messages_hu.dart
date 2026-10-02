// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hu locale. All the
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
  String get localeName => 'hu';

  static String m0(min, max) =>
      "Az értéknek ${min} és ${max} között kell lennie.";

  static String m1(colorCode) => "Ez a mező érvényes színkódot igényel.";

  static String m2(value) => "Az értéknek tartalmaznia kell ${value}-t.";

  static String m3(min) => "Ennek a mezőnek kisbetűt kell tartalmaznia.";

  static String m4(min) => "Ennek a mezőnek számot kell tartalmaznia.";

  static String m5(min) =>
      "Ennek a mezőnek speciális karaktert kell tartalmaznia.";

  static String m6(min) => "Ennek a mezőnek nagybetűt kell tartalmaznia.";

  static String m7(min, max) =>
      "A dátumnak a megengedett tartományon belül kell lennie.";

  static String m8(value) => "Az értéknek ${value}-val/vel kell végződnie.";

  static String m9(value) => "Ennek a mezőértéknek meg kell egyeznie ${value}.";

  static String m10(length) => "Az értéknek hosszúnak kell lennie ${length}.";

  static String m11(extensions) =>
      "Ez a mező érvényes fájlkiterjesztést igényel.";

  static String m12(fileSize, maxSize) =>
      "Ez a fájl meghaladja a maximálisan megengedett méretet.";

  static String m13(max) => "Az érték legyen legfeljebb ${max}.";

  static String m14(maxLength) =>
      "Az érték hossza legfeljebb ${maxLength} lehet.";

  static String m15(maxWordsCount) =>
      "Az érték szavainak száma kevesebb vagy egyenlő kell legyen, mint ${maxWordsCount}.";

  static String m16(min) => "Az érték legyen legalább ${min}.";

  static String m17(minLength) =>
      "Az érték hossza legalább ${minLength} karakter kell legyen.";

  static String m18(minWordsCount) =>
      "Az érték szavainak száma nagyobb vagy egyenlő kell legyen, mint ${minWordsCount}.";

  static String m19(value) => "Ez a mezőérték nem lehet egyenlő ${value}.";

  static String m20(min, max) => "Ez a mező érvényes portszámot igényel.";

  static String m21(value) => "Az értéknek ${value}-val/vel kell kezdődnie.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Ennek a mezőnek csak betűket kell tartalmaznia.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes Base64 karakterláncot igényel.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes BIC kódot igényel.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes városnévnek kell lennie.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek az engedélyezett értékek listájában kell lennie.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes országnevet kell lennie.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes bankkártya CVC kódot igényel.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "A megadott érték nem egy érvényes bankkártya szám.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes bankkártya lejárati dátumot igényel.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "A bankkártya lejárt.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "A dátumnak a jövőben kell lennie.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "A dátumnak a múltban kell lennie.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Ennek a mezőnek dátumnak kell lennie.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes DUNS számnak kell lennie.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "A megadott érték nem egy érvényes email cím.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező páros számot igényel.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek érvényes fájlnévnek kell lennie.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes keresztnévnek kell lennie.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek érvényes lebegőpontos számnak kell lennie.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek érvényes hexadecimális számnak kell lennie.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes IBAN számot igényel.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes egész számot igényel.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Érvénytelen MIME-típus.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "A megadott érték nem egy érvényes IP cím.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes ISBN számot igényel.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes JSON-t igényel.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes nyelvkódnak kell lennie.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes vezetéknévnek kell lennie.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes szélességi fokot igényel.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes rendszámnak kell lennie.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes hosszúsági fokot igényel.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező kisbetűket igényel.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes MAC címet igényel.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "A megadott érték nem egyezik a szükséges formátummal.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ennek a mezőnek hamisnak kell lennie.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Ennek a mezőnek igaznak kell lennie.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek negatívnak kell lennie.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Az érték nem lehet nulla.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Ebbe a mezőbe csak számot lehet írni.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező páratlan számot igényel.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes útlevélszámnak kell lennie.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes elérési utat igényel.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "A megadott érték nem egy érvényes telefonszám.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek pozitívnak kell lennie.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy prímszámnak kell lennie.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Ennek a mezőnek értéket kell adni.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező csak egy sorból állhat.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek érvényes TAJ számnak kell lennie.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes államnak kell lennie.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes utcanévnek kell lennie.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes időt igényel.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes időzónának kell lennie.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező egyedi értéket igényel.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező nagybetűket igényel.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "A megadott érték nem egy érvényes URL cím.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "A felhasználónév nem tartalmazhat kötőjeleket.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "A felhasználónév nem tartalmazhat pontokat.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "A felhasználónév nem tartalmazhat számokat.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "A felhasználónév nem tartalmazhat szóközöket.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "A felhasználónév nem tartalmazhat speciális karaktereket.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "A felhasználónév nem tartalmazhat aláhúzásokat.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek érvényes felhasználónévnek kell lennie.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Ez a mező érvényes UUID-t igényel.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek egy érvényes járműazonosító számnak kell lennie.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Az értéknek érvényes irányítószámnak kell lennie.",
    ),
  };
}
