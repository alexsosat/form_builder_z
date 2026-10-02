// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a da locale. All the
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
  String get localeName => 'da';

  static String m0(min, max) => "Værdien skal være mellem ${min} og ${max}.";

  static String m1(colorCode) => "Dette felt kræver en gyldig farvekode.";

  static String m2(value) => "Værdien skal indeholde ${value}.";

  static String m3(min) => "Dette felt skal indeholde et lille bogstav.";

  static String m4(min) => "Dette felt skal indeholde et tal.";

  static String m5(min) => "Dette felt skal indeholde et specialtegn.";

  static String m6(min) => "Dette felt skal indeholde et stort bogstav.";

  static String m7(min, max) =>
      "Datoen skal være inden for det tilladte interval.";

  static String m8(value) => "Værdien skal slutte med ${value}.";

  static String m9(value) => "Dette felts værdi skal være lig med ${value}.";

  static String m10(length) => "Værdiens længde skal være lig med ${length}.";

  static String m11(extensions) => "Dette felt kræver en gyldig filendelse.";

  static String m12(fileSize, maxSize) =>
      "Denne fil overstiger den maksimalt tilladte størrelse.";

  static String m13(max) => "Værdien skal være mindre eller lig med ${max}.";

  static String m14(maxLength) =>
      "Værdiens længde skal være mindre eller lig med ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Værdiens antal af ord skal være mindre eller lig med ${maxWordsCount}.";

  static String m16(min) =>
      "Værdien skal være større end eller lig med ${min}.";

  static String m17(minLength) =>
      "Værdien skal være større end eller lig med ${minLength}.";

  static String m18(minWordsCount) =>
      "Antallet af ord skal være større eller lig med ${minWordsCount}.";

  static String m19(value) => "Feltets værdi må ikke være lig med ${value}.";

  static String m20(min, max) => "Dette felt kræver et gyldigt portnummer.";

  static String m21(value) => "Værdien skal starte med ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt skal kun indeholde bogstaver.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig Base64-streng.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig BIC.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt bynavn.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være på listen over tilladte værdier.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt land.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig CVC-kode for kreditkortet.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver et gyldigt kreditkort nummer.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig udløbsdato for kreditkortet.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Kreditkortet er udløbet.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Datoen skal være i fremtiden.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Datoen skal være i fortiden.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig dato.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt DUNS-nummer.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig e-mail adresse.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver et lige tal.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt filnavn.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt fornavn.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt flydende punkt nummer.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt hexadecimalt nummer.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et heltal.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ugyldig MIME-type.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig IP.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver et gyldigt ISBN-nummer.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være en gyldig sprogkode.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt efternavn.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig breddegrad.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være en gyldig nummerplade.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig længdegrad.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver små bogstaver.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig MAC-adresse.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien matcher ikke mønstret.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt skal være falsk.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt skal være sandt.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et negativt tal.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien må ikke være nul.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være numerisk.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver et ulige tal.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt pasnummer.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig sti.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver et gyldigt telefonnummer.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et positivt tal.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et primtal.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Feltet skal udfyldes.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt skal være en enkelt linje.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt CPR-nummer.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være en gyldig stat.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt gadenavn.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig tid.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være en gyldig tidszone.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt skal være unikt.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver store bogstaver.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Skal være en gyldig URL adresse.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Brugernavn må ikke indeholde bindestreger.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Brugernavn må ikke indeholde prikker.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Brugernavn må ikke indeholde tal.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Brugernavn må ikke indeholde mellemrum.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Brugernavn må ikke indeholde specialtegn.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Brugernavn må ikke indeholde underscore.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være et gyldigt brugernavn.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette felt kræver en gyldig UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være en gyldig VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Værdien skal være en gyldig postnummer.",
    ),
  };
}
