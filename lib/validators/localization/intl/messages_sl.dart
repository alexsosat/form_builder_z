// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sl locale. All the
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
  String get localeName => 'sl';

  static String m0(min, max) => "Vrednost mora biti med ${min} in ${max}.";

  static String m1(colorCode) => "Vnesite veljavno barvno kodo.";

  static String m2(value) => "Vrednost mora vsebovati ${value}.";

  static String m3(min) => "Vrednost mora vsebovati male črke.";

  static String m4(min) => "Vrednost mora vsebovati številke.";

  static String m5(min) => "Vrednost mora vsebovati posebne znake.";

  static String m6(min) => "Vrednost mora vsebovati velike črke.";

  static String m7(min, max) => "Datum mora biti v dovoljenem razponu.";

  static String m8(value) => "Vrednost se mora končati z ${value}.";

  static String m9(value) => "Vrednost mora biti enaka ${value}.";

  static String m10(length) => "Besedilo mora biti dolgo ${length} znakov.";

  static String m11(extensions) => "Vnesite veljavno pripono datoteke.";

  static String m12(fileSize, maxSize) =>
      "Datoteka presega največjo dovoljeno velikost.";

  static String m13(max) => "Vrednost ne sme presegati ${max}.";

  static String m14(maxLength) =>
      "Besedilo mora biti krajše ali enako ${maxLength} znakov.";

  static String m15(maxWordsCount) =>
      "Vrednost mora imeti manj ali enako število besed kot ${maxWordsCount}.";

  static String m16(min) => "Vrednost mora biti večja ali enaka ${min}.";

  static String m17(minLength) =>
      "Besedilo mora biti daljše ali enako ${minLength} znakov.";

  static String m18(minWordsCount) =>
      "Vrednost mora imeti več ali enako število besed kot ${minWordsCount}.";

  static String m19(value) => "Vrednost ne sme biti enaka ${value}.";

  static String m20(min, max) => "Vnesite veljavno številko vrat.";

  static String m21(value) => "Vrednost se mora začeti z ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora vsebovati samo črke.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven Base64 niz.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven BIC.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavno ime mesta.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti v seznamu dovoljenih vrednosti.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavna država.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljavno CVC kodo kreditne kartice.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljavno številko kreditne kartice.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven datum poteka kreditne kartice.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Kreditna kartica je potekla.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Datum mora biti v prihodnosti.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Datum mora biti v preteklosti.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven datum.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavna DUNS številka.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven e-mail naslov.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti sodo število.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavno ime datoteke.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavno ime.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavno število s plavajočo vejico.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavno šestnajstiško število.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite celo število.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Neveljavna vrsta MIME.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven IP naslov.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven ISBN.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavna koda jezika.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljaven priimek.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljavno zemljepisno širino.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavna registrska tablica.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljavno zemljepisno dolžino.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora vsebovati male črke.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven MAC naslov.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost ne ustreza predpisanemu vzorcu.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Polje mora biti neresnično.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Polje mora biti resnično.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti negativno število.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost ne sme biti enaka nič.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost polja mora biti numerična.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti liho število.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavna številka potnega lista.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljavno pot.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljavno telefonsko številko.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti pozitivno število.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti praštevilo.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Polje ne sme biti prazno.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti enovrstična.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavna številka socialnega zavarovanja.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavna zvezna država.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavno ime ulice.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljavno časovno vrednost.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljaven časovni pas.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti edinstvena.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora vsebovati velike črke.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven URL naslov.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Uporabniško ime ne sme vsebovati vezajev.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Uporabniško ime ne sme vsebovati pik.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Uporabniško ime ne sme vsebovati številk.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Uporabniško ime ne sme vsebovati presledkov.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Uporabniško ime ne sme vsebovati posebnih znakov.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Uporabniško ime ne sme vsebovati podčrtajev.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavno uporabniško ime.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Vnesite veljaven UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljavna identifikacijska številka vozila (VIN).",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vrednost mora biti veljaven poštni številka.",
    ),
  };
}
