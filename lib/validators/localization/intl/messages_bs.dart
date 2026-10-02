// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a bs locale. All the
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
  String get localeName => 'bs';

  static String m0(min, max) => "Vrijednost mora biti između ${min} i ${max}.";

  static String m1(colorCode) => "Unesite validan kod boje.";

  static String m2(value) => "Vrijednost mora sadržavati ${value}.";

  static String m3(min) => "Ovo polje mora sadržavati jedno malo slovo.";

  static String m4(min) => "Ovo polje mora sadržavati jedan broj.";

  static String m5(min) => "Ovo polje mora sadržavati poseban znak.";

  static String m6(min) => "Ovo polje mora sadržavati jedno veliko slovo.";

  static String m7(min, max) => "Datum mora biti u dozvoljenom rasponu.";

  static String m8(value) => "Vrijednost mora završiti sa ${value}.";

  static String m9(value) => "Vrijednost mora biti jednaka ${value}.";

  static String m10(length) => "Vrijednost mora biti duga ${length} znakova.";

  static String m11(extensions) => "Unesite validan ekstenziju fajla.";

  static String m12(fileSize, maxSize) =>
      "Ovaj fajl premašuje maksimalnu dozvoljenu veličinu.";

  static String m13(max) => "Vrijednost mora biti manja ili jednaka ${max}.";

  static String m14(maxLength) =>
      "Vrijednost mora biti kraća ili jednaka ${maxLength} znakova.";

  static String m15(maxWordsCount) =>
      "Vrijednost mora imati riječi koje računaju manje ili jednake ${maxWordsCount}.";

  static String m16(min) => "Vrijednost mora biti veća ili jednaka ${min}.";

  static String m17(minLength) =>
      "Vrijednost mora biti duža ili jednaka ${minLength} znakova.";

  static String m18(minWordsCount) =>
      "Vrijednost mora imati riječi računanje veće ili jednake ${minWordsCount}.";

  static String m19(value) => "Vrijednost ne smije biti jednaka ${value}.";

  static String m20(min, max) => "Unesite validan broj porta.";

  static String m21(value) => "Vrijednost mora početi sa ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Ovo polje mora sadržavati samo slova.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validan Base64 niz.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validan BIC.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravno ime grada.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti na listi dopuštenih vrijednosti.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravna država.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validan CVC kod kreditne kartice.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validan broj kreditne kartice.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validan datum isteka kreditne kartice.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Kreditna kartica je istekla.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Datum mora biti u budućnosti.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Datum mora biti u prošlosti.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validan datum.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravan DUNS broj.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validnu e-mail adresu.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Ovo polje zahtijeva paran broj.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti validno ime datoteke.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravno ime.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravan broj s pomičnim zarezom.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravan heksadecimalni broj.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validan IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti cijeli broj.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Nevažeći MIME tip.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validnu IP adresu.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validan ISBN.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validan JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravan kod jezika.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravno prezime.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validnu geografsku širinu.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravna registarska tablica.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validnu geografsku dužinu.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ovo polje zahtijeva mala slova.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validnu MAC adresu.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost ne odgovara uzorku.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ovo polje mora biti lažno.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Ovo polje mora biti istina.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti negativan broj.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost ne smije biti nula.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti brojčana.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Ovo polje zahtijeva neparan broj.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravan broj pasoša.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validnu putanju.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validan broj telefona.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti pozitivan broj.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti prost broj.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Ovo polje ne smije biti prazno.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti jedan redak teksta.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti validan broj Socijalnog osiguranja.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravna država/regija.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravno ime ulice.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validno vrijeme.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravna vremenska zona.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti jedinstvena.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ovo polje zahtijeva velika slova.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validnu URL adresu.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Korisničko ime ne može sadržavati crte.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Korisničko ime ne može sadržavati tačke.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Korisničko ime ne može sadržavati brojeve.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Korisničko ime ne može sadržavati razmake.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Korisničko ime ne može sadržavati posebne znakove.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Korisničko ime ne može sadržavati donje crte.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti važeće korisničko ime.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Unesite validan UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti ispravan VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrijednost mora biti validan poštanski broj.",
    ),
  };
}
