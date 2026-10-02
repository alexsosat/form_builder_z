// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ca locale. All the
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
  String get localeName => 'ca';

  static String m0(min, max) => "El valor ha d\'estar entre ${min} i ${max}.";

  static String m1(colorCode) =>
      "Aquest camp requereix un codi de color vàlid.";

  static String m2(value) => "El valor ha de contenir ${value}.";

  static String m3(min) => "Aquest camp ha de contenir una minúscula.";

  static String m4(min) => "Aquest camp ha de contenir un número.";

  static String m5(min) => "Aquest camp ha de contenir un caràcter especial.";

  static String m6(min) => "Aquest camp ha de contenir una majúscula.";

  static String m7(min, max) => "La data ha d\'estar dins del rang permès.";

  static String m8(value) => "El valor ha d\'acabar amb ${value}.";

  static String m9(value) => "Aquest valor de camp ha de ser igual a ${value}.";

  static String m10(length) =>
      "El valor ha de tenir una longitud igual a ${length}.";

  static String m11(extensions) =>
      "Aquest camp requereix una extensió de fitxer vàlida.";

  static String m12(fileSize, maxSize) =>
      "Aquest fitxer supera la mida màxima permesa.";

  static String m13(max) => "El valor ha de ser inferior o igual a ${max}.";

  static String m14(maxLength) =>
      "El valor ha de tenir una longitud inferior o igual a ${maxLength}.";

  static String m15(maxWordsCount) =>
      "El valor ha de tenir un compte de paraules inferior o igual a ${maxWordsCount}.";

  static String m16(min) => "El valor ha de ser superior o igual a ${min}.";

  static String m17(minLength) =>
      "El valor ha de tenir una longitud superior o igual a ${minLength}.";

  static String m18(minWordsCount) =>
      "El valor ha de tenir un compte de paraules superior o igual a ${minWordsCount}.";

  static String m19(value) =>
      "Aquest valor de camp no ha de ser igual a ${value}.";

  static String m20(min, max) =>
      "Aquest camp requereix un número de port vàlid.";

  static String m21(value) => "El valor ha de començar amb ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp només ha de contenir lletres.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix una cadena Base64 vàlida.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un codi BIC vàlid.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un nom de ciutat vàlid.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha d\'estar en la llista de valors permesos.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un país vàlid.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un codi CVC vàlid de la targeta de crèdit.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un número de targeta de crèdit vàlid.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix una data de caducitat de la targeta de crèdit vàlida.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "La targeta de crèdit ha caducat.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "La data ha de ser al futur.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "La data ha de ser al passat.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix una cadena de data vàlida.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un número DUNS vàlid.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix una adreça de correu electrònic vàlida.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un número parell.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un nom de fitxer vàlid.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un nom de pila vàlid.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un nombre de coma flotant vàlid.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un nombre hexadecimal vàlid.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un IBAN vàlid.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un nombre enter vàlid.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Tipus MIME no vàlid.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix una IP vàlida.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un ISBN vàlid.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un JSON vàlid.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un codi de llengua vàlid.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un cognom vàlid.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix una latitud vàlida.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser una matrícula vàlida.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix una longitud vàlida.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix minúscules.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix una adreça MAC vàlida.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor no coincideix amb el patró.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp ha de ser fals.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp ha de ser cert.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un nombre negatiu.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor no pot ser zero.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser numèric.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un número senar.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un número de passaport vàlid.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un camí vàlid.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un número de telèfon vàlid.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un nombre positiu.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un nombre primer.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp no pot estar buit.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp ha de ser una línia única.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un Número de Seguretat Social vàlid.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un estat vàlid.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un nom de carrer vàlid.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix una hora vàlida.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser una zona horària vàlida.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un valor únic.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix majúscules.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix una adreça URL vàlida.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "El nom d\'usuari no pot contenir guions.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "El nom d\'usuari no pot contenir punts.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "El nom d\'usuari no pot contenir números.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "El nom d\'usuari no pot contenir espais.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "El nom d\'usuari no pot contenir caràcters especials.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "El nom d\'usuari no pot contenir subratllats.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un nom d\'usuari vàlid.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Aquest camp requereix un UUID vàlid.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un VIN vàlid.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor ha de ser un codi postal vàlid.",
    ),
  };
}
