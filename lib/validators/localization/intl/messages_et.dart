// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a et locale. All the
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
  String get localeName => 'et';

  static String m0(min, max) =>
      "Väärtus peab olema vahemikus ${min} kuni ${max}.";

  static String m1(colorCode) =>
      "Sellele väljale tuleb sisestada korrektne värvikood.";

  static String m2(value) => "Väärtus peab sisaldama ${value}.";

  static String m3(min) => "See väli peab sisaldama väiketähte.";

  static String m4(min) => "See väli peab sisaldama numbrit.";

  static String m5(min) => "See väli peab sisaldama erilist märki.";

  static String m6(min) => "See väli peab sisaldama suurtähte.";

  static String m7(min, max) => "Kuupäev peab olema lubatud vahemikus.";

  static String m8(value) => "Väärtus peab lõppema ${value}-ga.";

  static String m9(value) => "See väärtus peab olema ${value}.";

  static String m10(length) => "Väärtuse pikkus peab olema võrdne ${length}.";

  static String m11(extensions) => "See väli nõuab korrektset faililaiendit.";

  static String m12(fileSize, maxSize) =>
      "See fail ületab maksimaalse lubatud suuruse.";

  static String m13(max) => "Väärtus ei tohi olla üle ${max}.";

  static String m14(maxLength) =>
      "Sisendi pikkus ei tohi olla üle ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Väärtuses peab olema sõnade arv vähem või võrdne ${maxWordsCount}.";

  static String m16(min) => "Väärtus peab olema vähemalt ${min}.";

  static String m17(minLength) =>
      "Sisendi pikkus peab olema vähemalt ${minLength}.";

  static String m18(minWordsCount) =>
      "Väärtuse sõnade arv peab olema suurem kui ${minWordsCount}.";

  static String m19(value) => "See väärtus ei tohi olla ${value}.";

  static String m20(min, max) => "See väli nõuab kehtivat pordinumbrit.";

  static String m21(value) => "Väärtus peab algama ${value}-ga.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli peab sisaldama ainult tähti.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat Base64 stringi.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat BIC koodi.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv linna nimi.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema lubatud väärtuste nimekirjas.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv riik.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Sellele väljale tuleb sisestada korrektne krediitkaardi CVC kood.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Sellele väljale tuleb sisestada korrektne krediitkaardi number.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Sellele väljale tuleb sisestada krediitkaardi kehtivusaeg.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Krediitkaardi kehtivusaeg on möödas.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Kuupäev peab olema tulevikus.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Kuupäev peab olema minevikus.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Sellele väljale tuleb sisestada korrektne kuupäev.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv DUNS number.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat e-posti aadressi.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab paarisarvu.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv failinimi.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv eesnimi.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv ujukomaarv.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv kuueteistkümnendkohtade süsteemi arv.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat IBAN-i.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Sisend peab olema täisarv.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vigane MIME tüüp.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Sellele väljale tuleb sisestada korrektne IP-aadress.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat ISBN koodi.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat JSON-i.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv keelekood.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv perekonnanimi.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat laiuskraadi.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv numbrimärk.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat pikkuskraadi.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab väiketähti.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat MAC aadressi.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Sisend ei vasta mustrile.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli peab olema väär.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli peab olema tõene.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema negatiivne number.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus ei tohi olla null.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Sisend peab olema arv.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab paaritu arvu.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv passinumber.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat rada.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Sellele väljale tuleb sisestada korrektne telefoninumber.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema positiivne number.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema algarv.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli ei tohi olla tühi.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab ühekordset rida.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv sotsiaalkindlustuse number.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv osariik.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv tänava nimi.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat kellaega.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv ajavöönd.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli peab olema unikaalne.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab suurtähti.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Sellele väljale tuleb sisestada korrektne URL.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Kasutajanimi ei tohi sisaldada kriipse.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Kasutajanimi ei tohi sisaldada punkte.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Kasutajanimi ei tohi sisaldada numbreid.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Kasutajanimi ei tohi sisaldada tühikuid.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Kasutajanimi ei tohi sisaldada erimärke.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Kasutajanimi ei tohi sisaldada alakriipse.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv kasutajanimi.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "See väli nõuab kehtivat UUID-d.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Väärtus peab olema kehtiv postiindeks.",
    ),
  };
}
