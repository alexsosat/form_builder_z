// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a rm locale. All the
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
  String get localeName => 'rm';

  static String m0(min, max) => "La valur sto esser tranter ${min} e ${max}.";

  static String m1(colorCode) =>
      "La valur sto esser in code da colur ${colorCode} valid.";

  static String m2(value) => "La valur sto cuntegnair ${value}.";

  static String m3(min) =>
      "La valur sto cuntegnair almain ${min} caracters minuscls.";

  static String m4(min) => "La valur sto cuntegnair almain ${min} cifras.";

  static String m5(min) =>
      "La valur sto cuntegnair almain ${min} caracters spezials.";

  static String m6(min) =>
      "La valur sto cuntegnair almain ${min} caracters maiuscls.";

  static String m7(min, max) =>
      "La data sto esser en l\'interval ${min} - ${max}.";

  static String m8(value) => "La valur sto finir cun ${value}.";

  static String m9(value) =>
      "La valur da quest champ sto esser eguala a ${value}.";

  static String m10(length) =>
      "La valur sto avair ina lunghezza eguala a ${length}.";

  static String m11(extensions) =>
      "L\'extensiun da datoteca sto esser ${extensions}.";

  static String m12(fileSize, maxSize) =>
      "La grondezza da la datoteca sto esser pli pitschna che ${maxSize}, dentant è ella ${fileSize}.";

  static String m13(max) =>
      "La valur sto esser pli pitschna u eguala a ${max}.";

  static String m14(maxLength) =>
      "La valur sto avair ina lunghezza pli pitschna u eguala a ${maxLength}.";

  static String m15(maxWordsCount) =>
      "La valur sto avair in dumber da pleds pli pitschen u egal a ${maxWordsCount}.";

  static String m16(min) => "La valur sto esser pli gronda u eguala a ${min}.";

  static String m17(minLength) =>
      "La valur sto avair ina lunghezza pli gronda u eguala a ${minLength}.";

  static String m18(minWordsCount) =>
      "La valur sto avair in dumber da pleds pli grond u egal a ${minWordsCount}.";

  static String m19(value) =>
      "La valur da quest champ na dastga betg esser eguala a ${value}.";

  static String m20(min, max) =>
      "La valur sto esser ina numra da port valida tranter ${min} e ${max}.";

  static String m21(value) => "La valur sto cumenzar cun ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser alfabetica.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser ina chadaina Base64 valida.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in BIC valid.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in num da citad valid.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser en la glista.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in pajais valid.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ dovra in code CVC valid.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ dovra ina numra valida da carta da credit.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ dovra ina data da scadenza valida.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Questa carta da credit è scadida.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "La data sto esser en il futur.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "La data sto esser en il passà.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ dovra ina chadaina da data valida.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser ina numra DUNS valida.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ dovra ina adressa d\'e-mail valida.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in dumber pèrs.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in num da datoteca valid.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in prenom valid.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in dumber cun comma flottanta valid.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in dumber hexadecimal valid.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in IBAN valid.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ dovra in entir valid.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Tip MIME nunvalid.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ dovra in\'adressa IP valida.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in ISBN valid.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser JSON valid.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in code da lingua valid.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in num da famiglia valid.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser ina latituda valida.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser ina platta d\'immatriculaziun valida.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser ina longhituda valida.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser en minusclas.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in\'adressa MAC valida.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur na correspunda betg al muster.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ sto esser fals.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ sto esser vair.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in dumber negativ.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur na dastga betg esser zero.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser numerica.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in dumber spèr.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser ina numra da passaport valida.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser ina via valida.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ dovra ina numra da telefon valida.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in dumber positiv.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in dumber prim.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ na po betg esser vid.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser ina suletta lingia.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser ina numra da segirezza sociala valida.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in stadi valid.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in num da via valid.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in temp valid.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser ina zona d\'urari valida.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser unica.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser en maiusclas.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Quest champ dovra in\'adressa URL valida.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Il num d\'utilisader na po betg cuntegnair tratgs.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Il num d\'utilisader na po betg cuntegnair puncts.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Il num d\'utilisader na po betg cuntegnair cifras.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Il num d\'utilisader na po betg cuntegnair spazis.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Il num d\'utilisader na po betg cuntegnair caracters spezials.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Il num d\'utilisader na po betg cuntegnair tratgs sut.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in num d\'utilisader valid.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in UUID valid.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser ina numra VIN valida.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "La valur sto esser in code postal valid.",
    ),
  };
}
