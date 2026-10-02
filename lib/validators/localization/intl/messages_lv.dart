// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a lv locale. All the
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
  String get localeName => 'lv';

  static String m0(min, max) => "Vērtībai jābūt starp ${min} un ${max}.";

  static String m1(colorCode) =>
      "Vērtībai jābūt derīgam ${colorCode} krāsu kodam.";

  static String m2(value) => "Vērtībai jāsatur ${value}.";

  static String m3(min) => "Vērtībai jāsatur vismaz ${min} mazie burti.";

  static String m4(min) => "Vērtībai jāsatur vismaz ${min} cipari.";

  static String m5(min) =>
      "Vērtībai jāsatur vismaz ${min} speciālas rakstzīmes.";

  static String m6(min) => "Vērtībai jāsatur vismaz ${min} lielie burti.";

  static String m7(min, max) =>
      "Datumam jābūt diapazonā no ${min} līdz ${max}.";

  static String m8(value) => "Vērtībai jābeidzas ar ${value}.";

  static String m9(value) => "Šī lauka vērtībai jābūt vienādai ar ${value}.";

  static String m10(length) =>
      "Vērtībai jābūt garumā, kas vienāds ar ${length}.";

  static String m11(extensions) => "Faila paplašinājumam jābūt ${extensions}.";

  static String m12(fileSize, maxSize) =>
      "Faila izmēram jābūt mazākam par ${maxSize}, bet tas ir ${fileSize}.";

  static String m13(max) => "Vērtībai jābūt mazākai vai vienādai ar ${max}.";

  static String m14(maxLength) =>
      "Vērtības garumam jābūt mazākam vai vienādam ar ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Vārdu skaitam jābūt mazākam vai vienādam ar ${maxWordsCount}.";

  static String m16(min) => "Vērtībai jābūt lielākai vai vienādai ar ${min}.";

  static String m17(minLength) =>
      "Vērtības garumam jābūt lielākam vai vienādam ar ${minLength}.";

  static String m18(minWordsCount) =>
      "Vārdu skaitam jābūt lielākam vai vienādam ar ${minWordsCount}.";

  static String m19(value) =>
      "Šī lauka vērtībai nevajadzētu būt vienādai ar ${value}.";

  static String m20(min, max) =>
      "Vērtībai jābūt derīgam porta numuram starp ${min} un ${max}.";

  static String m21(value) => "Vērtībai jāsākas ar ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt alfabētiskai.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgai base64 virknei.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam BIC.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam pilsētas nosaukumam.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt sarakstā.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgai valstij.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Šis lauks prasa derīgu CVC kodu.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Šis lauks prasa derīgu kredītkartes numuru.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Šis lauks prasa derīgu derīguma termiņu.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Šīs kredītkartes derīguma termiņš ir beidzies.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Datumam jābūt nākotnē.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Datumam jābūt pagātnē.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Šis lauks prasa derīgu datuma virkni.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam DUNS numuram.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Šis lauks prasa derīgu e-pasta adresi.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt pāra skaitlim.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam faila nosaukumam.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam vārdam.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam decimālskaitlim.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam heksadecimālam skaitlim.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Šis lauks prasa derīgu veselu skaitli.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Nederīgs MIME tips.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Šis lauks prasa derīgu IP adresi.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam ISBN.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam valodas kodam.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam uzvārdam.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam platumam.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgai numurzīmei.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam garumam.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt mazajiem burtiem.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgai MAC adresei.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtība neatbilst paraugam.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Šim laukam jābūt nepatiesam.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Šim laukam jābūt patiesam.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt negatīvam skaitlim.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai nevajadzētu būt nullei.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt skaitliskai.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt nepāra skaitlim.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam pases numuram.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam ceļam.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Šis lauks prasa derīgu tālruņa numuru.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt pozitīvam skaitlim.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt pirmskaitlim.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Šis lauks nedrīkst būt tukšs.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt vienā rindā.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam sociālās apdrošināšanas numuram.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam štata vai reģiona nosaukumam.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam ielas nosaukumam.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam laikam.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgai laika joslai.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt unikālai.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt lielajiem burtiem.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Šis lauks prasa derīgu URL adresi.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Lietotājvārdā nevar būt domuzīmes.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Lietotājvārdā nevar būt punkti.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage("Lietotājvārdā nevar būt cipari."),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Lietotājvārdā nevar būt atstarpes.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Lietotājvārdā nevar būt speciālas rakstzīmes.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Lietotājvārdā nevar būt pasvītrojumi.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam lietotājvārdam.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vērtībai jābūt derīgam pasta indeksam.",
    ),
  };
}
