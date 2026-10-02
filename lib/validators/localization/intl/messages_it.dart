// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static String m0(min, max) =>
      "Il valore deve essere compreso tra ${min} e ${max}.";

  static String m1(colorCode) =>
      "Questo campo richiede un codice colore valido.";

  static String m2(value) => "Il valore deve contenere ${value}.";

  static String m3(min) => "Questo campo deve contenere una lettera minuscola.";

  static String m4(min) => "Questo campo deve contenere un numero.";

  static String m5(min) => "Questo campo deve contenere un carattere speciale.";

  static String m6(min) => "Questo campo deve contenere una lettera maiuscola.";

  static String m7(min, max) =>
      "La data deve essere compresa nell\'intervallo consentito.";

  static String m8(value) => "Il valore deve terminare con ${value}.";

  static String m9(value) =>
      "Il valore di questo campo deve essere uguale a ${value}.";

  static String m10(length) =>
      "Il valore deve avere una lunghezza uguale a ${length}.";

  static String m11(extensions) =>
      "Questo campo richiede un\'estensione del file valida.";

  static String m12(fileSize, maxSize) =>
      "Questo file supera la dimensione massima consentita.";

  static String m13(max) =>
      "Il valore inserito deve essere minore o uguale a ${max}.";

  static String m14(maxLength) =>
      "Il valore inserito deve avere una lunghezza minore o uguale a ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Il valore deve avere un conteggio di parole inferiore o uguale a ${maxWordsCount}.";

  static String m16(min) =>
      "Il valore inserito deve essere maggiore o uguale a ${min}.";

  static String m17(minLength) =>
      "Il valore inserito deve avere una lunghezza maggiore o uguale a ${minLength}.";

  static String m18(minWordsCount) =>
      "Il valore deve avere un conteggio di parole maggiore o uguale a ${minWordsCount}.";

  static String m19(value) =>
      "Questo valore di campo non deve essere uguale a ${value}.";

  static String m20(min, max) =>
      "Questo campo richiede un numero di porta valido.";

  static String m21(value) => "Il valore deve iniziare con ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo deve contenere solo lettere.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede una stringa Base64 valida.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un codice BIC valido.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un nome di città valido.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere presente nell\'elenco dei valori consentiti.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un paese valido.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un codice CVC della carta di credito valido.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un numero di carta di credito valido.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede una data di scadenza della carta di credito valida.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "La carta di credito è scaduta.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "La data deve essere nel futuro.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "La data deve essere nel passato.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede una data valida.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un numero DUNS valido.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un indirizzo email valido.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un numero pari.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un nome file valido.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un nome valido.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un numero in virgola mobile valido.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un numero esadecimale valido.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un IBAN valido.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un numero intero.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Tipo mime non valido.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un indirizzo IP valido.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un ISBN valido.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un JSON valido.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un codice lingua valido.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un cognome valido.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede una latitudine valida.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere una targa valida.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede una longitudine valida.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede lettere minuscole.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un indirizzo MAC valido.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore non corrisponde al formato richiesto.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo deve essere falso.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo deve essere vero.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un numero negativo.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore non deve essere zero.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere numerico.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un numero dispari.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un numero di passaporto valido.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un percorso valido.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un numero di telefono valido.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un numero positivo.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un numero primo.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo non può essere vuoto.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un testo su una sola riga.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un numero di previdenza sociale valido.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere uno stato valido.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un nome di via valido.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un orario valido.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un fuso orario valido.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un valore unico.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede lettere maiuscole.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede una URL valida.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Il nome utente non può contenere trattini.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Il nome utente non può contenere punti.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Il nome utente non può contenere numeri.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Il nome utente non può contenere spazi.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Il nome utente non può contenere caratteri speciali.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Il nome utente non può contenere underscore.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un nome utente valido.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Questo campo richiede un UUID valido.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un VIN valido.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Il valore deve essere un codice postale valido.",
    ),
  };
}
