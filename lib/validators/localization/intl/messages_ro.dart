// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ro locale. All the
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
  String get localeName => 'ro';

  static String m0(min, max) =>
      "Valoarea trebuie să fie între ${min} și ${max}.";

  static String m1(colorCode) => "Acest câmp necesită un cod de culoare valid.";

  static String m2(value) => "Valoarea trebuie să conțină ${value}.";

  static String m3(min) => "Acest câmp trebuie să conțină o literă mică.";

  static String m4(min) => "Acest câmp trebuie să conțină un număr.";

  static String m5(min) => "Acest câmp trebuie să conțină un caracter special.";

  static String m6(min) => "Acest câmp trebuie să conțină o literă mare.";

  static String m7(min, max) => "Data trebuie să fie în intervalul permis.";

  static String m8(value) => "Valoarea trebuie să se termine cu ${value}.";

  static String m9(value) =>
      "Valoarea câmpului trebuie să fie egală cu ${value}.";

  static String m10(length) =>
      "Valoarea trebuie să aibă o lungime egală cu ${length}.";

  static String m11(extensions) =>
      "Acest câmp necesită o extensie de fișier validă.";

  static String m12(fileSize, maxSize) =>
      "Acest fișier depășește dimensiunea maximă permisă.";

  static String m13(max) =>
      "Valoarea trebuie să fie mai mică sau egală cu ${max}.";

  static String m14(maxLength) =>
      "Valoarea trebuie să aibă o lungime mai mică sau egală cu ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Valoarea trebuie să aibă un număr de cuvinte mai mic sau egal cu ${maxWordsCount}.";

  static String m16(min) =>
      "Valoarea trebuie să fie mai mare sau egală cu ${min}.";

  static String m17(minLength) =>
      "Valoarea trebuie să aibă o lungime mai mare sau egală cu ${minLength}.";

  static String m18(minWordsCount) =>
      "Valoarea trebuie să aibă un număr de cuvinte mai mare sau egal cu ${minWordsCount}.";

  static String m19(value) =>
      "Valoarea câmpului nu trebuie să fie egală cu ${value}.";

  static String m20(min, max) => "Acest câmp necesită un număr de port valid.";

  static String m21(value) => "Valoarea trebuie să înceapă cu ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp trebuie să conțină doar litere.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un șir Base64 valid.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un cod BIC valid.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un nume de oraș valid.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie în lista valorilor permise.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie o țară validă.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un cod CVC valid al cardului de credit.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un număr valid de card de credit.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită o dată de expirare a cardului de credit validă.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Cardul de credit a expirat.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Data trebuie să fie în viitor.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Data trebuie să fie în trecut.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un șir de date valid.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un număr DUNS valid.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită o adresă de e-mail validă.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un număr par.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un nume de fișier valid.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un prenume valid.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un număr zecimal valid.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un număr hexadecimal valid.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un IBAN valid.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un număr întreg valid.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Tip mime invalid.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un IP valid.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un număr ISBN valid.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un JSON valid.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un cod de limbă valid.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un nume de familie valid.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită o latitudine validă.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un număr de înmatriculare valid.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită o longitudine validă.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită litere mici.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită o adresă MAC validă.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea nu se potrivește cu modelul.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp trebuie să fie fals.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp trebuie să fie adevărat.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un număr negativ.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea nu trebuie să fie zero.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie numerică.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un număr impar.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un număr de pașaport valid.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită o cale validă.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un număr de telefon valid.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un număr pozitiv.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un număr prim.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp nu poate fi gol.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp trebuie să fie pe o singură linie.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un Număr de Asigurare Socială valid.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un stat valid.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un nume de stradă valid.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită o oră validă.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un fus orar valid.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie unică.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită litere mari.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită o adresă URL validă.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Numele de utilizator nu poate conţine cratime.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Numele de utilizator nu poate conţine puncte.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Numele de utilizator nu poate conţine cifre.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Numele de utilizator nu poate conţine spaţii.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Numele de utilizator nu poate conţine caractere speciale.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Numele de utilizator nu poate conţine caractere de subliniere.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un nume de utilizator valid.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Acest câmp necesită un UUID valid.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un VIN valid.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Valoarea trebuie să fie un cod ZIP valid.",
    ),
  };
}
