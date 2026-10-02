// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sv locale. All the
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
  String get localeName => 'sv';

  static String m0(min, max) => "Värdet måste vara mellan ${min} och ${max}.";

  static String m1(colorCode) => "Detta fält kräver en giltig färgkod.";

  static String m2(value) => "Värdet måste innehålla ${value}.";

  static String m3(min) => "Detta fält måste innehålla gemener.";

  static String m4(min) => "Detta fält måste innehålla siffror.";

  static String m5(min) => "Detta fält måste innehålla ett specialtecken.";

  static String m6(min) => "Detta fält måste innehålla versaler.";

  static String m7(min, max) =>
      "Datumet måste vara inom det tillåtna intervallet.";

  static String m8(value) => "Värdet måste sluta med ${value}.";

  static String m9(value) => "Detta fältvärde måste vara lika med ${value}.";

  static String m10(length) => "Värdet måste ha en längd lika med ${length}.";

  static String m11(extensions) => "Detta fält kräver en giltig filtillägg.";

  static String m12(fileSize, maxSize) =>
      "Denna fil överskrider den maximalt tillåtna storleken.";

  static String m13(max) =>
      "Värdet måste vara mindre än eller lika med ${max}.";

  static String m14(maxLength) =>
      "Värdet måste ha en längd mindre än eller lika med ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Värdet måste ha ett antal ord som är mindre än eller lika med ${maxWordsCount}.";

  static String m16(min) =>
      "Värdet måste vara större än eller lika med ${min}.";

  static String m17(minLength) =>
      "Värdet måste ha en längd större än eller lika med ${minLength}.";

  static String m18(minWordsCount) =>
      "Värdet måste ha ett antal ord som är större än eller lika med ${minWordsCount}.";

  static String m19(value) =>
      "Detta fältvärde får inte vara lika med ${value}.";

  static String m20(min, max) => "Detta fält kräver ett giltigt portnummer.";

  static String m21(value) => "Värdet måste börja med ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält får endast innehålla bokstäver.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en giltig Base64-sträng.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver ett giltigt BIC-nummer.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt stadsnamn.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara med i listan över tillåtna värden.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt land.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en giltig CVC-kod för kreditkortet.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver ett giltigt kreditkortsnummer.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver ett giltigt utgångsdatum för kreditkortet.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Kreditkortet har gått ut.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Datumet måste vara i framtiden.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Datumet måste vara i det förflutna.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver ett giltigt datum.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt DUNS-nummer.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en giltig e-postadress.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver ett jämnt nummer.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt filnamn.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt förnamn.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt flyttal.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt hexadecimaltal.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver ett giltigt IBAN-nummer.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett heltal.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ogiltig MIME-typ.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en giltig IP-adress.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver ett giltigt ISBN-nummer.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en giltig JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara en giltig språkkod.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt efternamn.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en giltig latitud.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara en giltig registreringsskylt.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en giltig longitud.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver gemener.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en giltig MAC-adress.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet matchar inte mönstret.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält måste vara falskt.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält måste vara sant.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett negativt tal.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet får inte vara noll.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara numeriskt.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver ett udda nummer.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt passnummer.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en giltig sökväg.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver ett giltigt telefonnummer.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett positivt tal.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett primtal.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält får inte vara tomt.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en enradig text.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt personnummer.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara en giltig stat.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt gatunamn.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en giltig tid.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara en giltig tidszon.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver ett unikt värde.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver versaler.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver en giltig URL-adress.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Användarnamnet får inte innehålla bindestreck.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Användarnamnet får inte innehålla punkter.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Användarnamnet får inte innehålla siffror.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Användarnamnet får inte innehålla mellanslag.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Användarnamnet får inte innehålla specialtecken.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Användarnamnet får inte innehålla understreck.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt användarnamn.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Detta fält kräver ett giltigt UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara ett giltigt VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Värdet måste vara en giltig postnummer.",
    ),
  };
}
