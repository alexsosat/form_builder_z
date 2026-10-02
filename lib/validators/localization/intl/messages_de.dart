// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(min, max) =>
      "Der Wert muss zwischen ${min} und ${max} liegen.";

  static String m1(colorCode) =>
      "Dieses Feld erfordert einen gültigen Farbcode.";

  static String m2(value) => "Der Wert muss ${value} enthalten.";

  static String m3(min) => "Dieses Feld muss einen Kleinbuchstaben enthalten.";

  static String m4(min) => "Dieses Feld muss eine Zahl enthalten.";

  static String m5(min) => "Dieses Feld muss ein Sonderzeichen enthalten.";

  static String m6(min) => "Dieses Feld muss einen Großbuchstaben enthalten.";

  static String m7(min, max) => "Das Datum muss im erlaubten Bereich liegen.";

  static String m8(value) => "Der Wert muss mit ${value} enden.";

  static String m9(value) => "Dieser Feldwert muss gleich ${value} sein.";

  static String m10(length) => "Der Wert muss eine Länge von ${length} haben.";

  static String m11(extensions) =>
      "Dieses Feld erfordert eine gültige Dateierweiterung.";

  static String m12(fileSize, maxSize) =>
      "Diese Datei überschreitet die maximal zulässige Größe.";

  static String m13(max) => "Der Wert muss kleiner oder gleich ${max} sein.";

  static String m14(maxLength) =>
      "Der Wert muss eine Länge haben, die kleiner oder gleich ${maxLength} ist.";

  static String m15(maxWordsCount) =>
      "Der Wert muss eine Wortanzahl haben, die kleiner oder gleich ${maxWordsCount} ist.";

  static String m16(min) => "Der Wert muss größer oder gleich ${min} sein.";

  static String m17(minLength) =>
      "Der Wert muss eine Länge haben, die größer oder gleich ${minLength} ist.";

  static String m18(minWordsCount) =>
      "Der Wert muss eine Wortanzahl haben, die größer oder gleich ${minWordsCount} ist.";

  static String m19(value) =>
      "Dieser Feldwert darf nicht gleich ${value} sein.";

  static String m20(min, max) =>
      "Dieses Feld erfordert eine gültige Portnummer.";

  static String m21(value) => "Der Wert muss mit ${value} beginnen.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld darf nur Buchstaben enthalten.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert eine gültige Base64-Zeichenkette.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert eine gültige BIC.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss ein gültiger Stadtname sein.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss in der Liste der zulässigen Werte sein.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss ein gültiges Land sein.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert einen gültigen CVC-Code der Kreditkarte.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Für dieses Feld ist eine gültige Kreditkartennummer erforderlich.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert ein gültiges Ablaufdatum der Kreditkarte.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Die Kreditkarte ist abgelaufen.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Datum muss in der Zukunft liegen.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Datum muss in der Vergangenheit liegen.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert ein gültiges Datum.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss eine gültige DUNS-Nummer sein.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Für dieses Feld ist eine gültige E-Mail-Adresse erforderlich.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert eine gerade Zahl.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Wert muss ein gültiger Dateiname sein.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss ein gültiger Vorname sein.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss eine gültige Fließkommazahl sein.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss eine gültige hexadezimale Zahl sein.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert eine gültige IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss eine ganze Zahl sein.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ungültiger MIME-Typ.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert eine gültige IP-Adresse.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert eine gültige ISBN.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert ein gültiges JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss ein gültiger Sprachcode sein.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss ein gültiger Nachname sein.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert einen gültigen Breitengrad.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss ein gültiges Nummernschild sein.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert einen gültigen Längengrad.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert Kleinbuchstaben.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert eine gültige MAC-Adresse.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert stimmt nicht mit dem Muster überein.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld muss falsch sein.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld muss wahr sein.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Wert muss eine negative Zahl sein.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Wert darf nicht null sein.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss numerisch sein.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert eine ungerade Zahl.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss eine gültige Passnummer sein.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert einen gültigen Pfad.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert eine gültige Telefonnummer.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Wert muss eine positive Zahl sein.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss eine Primzahl sein.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld darf nicht leer sein.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld darf keine Zeilenumbrüche enthalten.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Wert muss eine gültige Sozialversicherungsnummer sein.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss ein gültiger Bundesstaat sein.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss ein gültiger Straßenname sein.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert eine gültige Uhrzeit.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss eine gültige Zeitzone sein.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert einen eindeutigen Wert.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert Großbuchstaben.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Für dieses Feld ist eine gültige URL-Adresse erforderlich.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Der Benutzername darf keine Bindestriche enthalten.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Benutzername darf keine Punkte enthalten.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Der Benutzername darf keine Zahlen enthalten.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Der Benutzername darf keine Leerzeichen enthalten.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Der Benutzername darf keine Sonderzeichen enthalten.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Der Benutzername darf keinen Unterstrich enthalten.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss ein gültiger Benutzername sein.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Dieses Feld erfordert eine gültige UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Der Wert muss eine gültige Fahrzeug-Identifizierungsnummer (VIN) sein.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Wert muss eine gültige Postleitzahl sein.",
    ),
  };
}
