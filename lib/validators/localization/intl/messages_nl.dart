// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a nl locale. All the
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
  String get localeName => 'nl';

  static String m0(min, max) =>
      "De waarde moet tussen ${min} en ${max} liggen.";

  static String m1(colorCode) => "Een geldige kleurcode is vereist.";

  static String m2(value) => "De waarde moet ${value} bevatten.";

  static String m3(min) => "Dit veld moet een kleine letter bevatten.";

  static String m4(min) => "Dit veld moet een cijfer bevatten.";

  static String m5(min) => "Dit veld moet een speciaal teken bevatten.";

  static String m6(min) => "Dit veld moet een hoofdletter bevatten.";

  static String m7(min, max) =>
      "De datum moet binnen het toegestane bereik liggen.";

  static String m8(value) => "De waarde moet eindigen met ${value}.";

  static String m9(value) => "De waarde moet gelijk zijn aan ${value}.";

  static String m10(length) =>
      "Waarde moet een lengte hebben die gelijk is aan ${length}.";

  static String m11(extensions) => "Een geldige bestandsextensie is vereist.";

  static String m12(fileSize, maxSize) =>
      "Dit bestand overschrijdt de maximaal toegestane grootte.";

  static String m13(max) => "De waarde moet kleiner of gelijk zijn aan ${max}.";

  static String m14(maxLength) =>
      "De waarde moet een lengte hebben die kleiner of gelijk is aan ${maxLength}.";

  static String m15(maxWordsCount) =>
      "De waarde moet een aantal woorden tellen die minder of gelijk zijn aan ${maxWordsCount}.";

  static String m16(min) => "De waarde moet groter of gelijk zijn aan ${min}.";

  static String m17(minLength) =>
      "De waarde moet een lengte hebben die groter of gelijk is aan ${minLength}.";

  static String m18(minWordsCount) =>
      "De waarde moet een aantal woorden tellen groter of gelijk aan ${minWordsCount}.";

  static String m19(value) => "De waarde mag niet gelijk zijn aan ${value}.";

  static String m20(min, max) => "Een geldig poortnummer is vereist.";

  static String m21(value) => "De waarde moet beginnen met ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Dit veld mag alleen letters bevatten.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige Base64-tekenreeks is vereist.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige BIC is vereist.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldige plaatsnaam zijn.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "De waarde moet in de lijst met toegestane waarden staan.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldig land zijn.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige CVC-code van de creditcard is vereist.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldig creditcardnummer is vereist.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige vervaldatum van de creditcard is vereist.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "De creditcard is verlopen.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Datum moet in de toekomst liggen.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Datum moet in het verleden liggen.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige datum is vereist.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldig DUNS-nummer zijn.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldig e-mailadres is vereist.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Dit veld vereist een even getal.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldige bestandsnaam zijn.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldige voornaam zijn.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldig drijvend-komma getal zijn.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldig hexadecimaal getal zijn.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige IBAN is vereist.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Dit veld vereist een geheel getal.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ongeldig MIME-type.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldig IP-adres is vereist.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige ISBN is vereist.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige JSON is vereist.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldige taalcode zijn.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldige achternaam zijn.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige breedtegraad is vereist.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldige kentekenplaat zijn.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige lengtegraad is vereist.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dit veld vereist kleine letters.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldig MAC-adres is vereist.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "De waarde komt niet overeen met het patroon.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dit veld moet onwaar zijn.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Dit veld moet waar zijn.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een negatief getal zijn.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde mag niet nul zijn.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "De waarde moet numeriek zijn.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Dit veld vereist een oneven getal.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldig paspoortnummer zijn.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldig pad is vereist.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldig telefoonnummer is vereist.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een positief getal zijn.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een priemgetal zijn.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Dit veld mag niet leeg zijn.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Dit veld mag geen nieuwe regels bevatten.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldig burgerservicenummer zijn.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldige staat zijn.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldige straatnaam zijn.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige tijd is vereist.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldige tijdzone zijn.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "De waarde moet uniek zijn.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dit veld vereist hoofdletters.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige URL is vereist.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Gebruikersnaam mag geen streepjes bevatten.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Gebruikersnaam mag geen punten bevatten.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Gebruikersnaam mag geen cijfers bevatten.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Gebruikersnaam mag geen spaties bevatten.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Gebruikersnaam mag geen speciale tekens bevatten.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Gebruikersnaam mag geen onderstrepingsteken bevatten.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldige gebruikersnaam zijn.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Een geldige UUID is vereist.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldig VIN zijn.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Waarde moet een geldige postcode zijn.",
    ),
  };
}
