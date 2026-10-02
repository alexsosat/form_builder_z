// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(min, max) => "El valor debe estar entre ${min} y ${max}.";

  static String m1(colorCode) =>
      "Este campo requiere un código de color ${colorCode} válido.";

  static String m2(value) => "El valor debe contener ${value}.";

  static String m3(min) =>
      "Este campo debe contener al menos ${min} letras minúsculas.";

  static String m4(min) => "Este campo debe contener al menos ${min} números.";

  static String m5(min) =>
      "Este campo debe contener al menos ${min} caracteres especiales.";

  static String m6(min) =>
      "Este campo debe contener al menos ${min} letras mayúsculas.";

  static String m7(min, max) => "La fecha debe estar entre ${min} y ${max}.";

  static String m8(value) => "El valor debe terminar con ${value}.";

  static String m9(value) => "Este campo debe ser igual a ${value}.";

  static String m10(length) =>
      "El valor debe tener una longitud igual a ${length}.";

  static String m11(extensions) =>
      "La extensión del archivo debe ser ${extensions}.";

  static String m12(fileSize, maxSize) =>
      "El tamaño del archivo (${fileSize}) debe ser menor que ${maxSize}.";

  static String m13(max) => "El valor debe ser menor o igual que ${max}.";

  static String m14(maxLength) =>
      "El valor debe tener una longitud menor o igual a ${maxLength}.";

  static String m15(maxWordsCount) =>
      "El valor debe tener un recuento de palabras menor o igual a ${maxWordsCount}.";

  static String m16(min) => "El valor debe ser mayor o igual que ${min}.";

  static String m17(minLength) =>
      "El valor debe tener una longitud mayor o igual a ${minLength}.";

  static String m18(minWordsCount) =>
      "El valor debe tener un recuento de palabras mayor o igual a ${minWordsCount}.";

  static String m19(value) => "Este campo no debe ser igual a ${value}.";

  static String m20(min, max) =>
      "Este campo requiere un número de puerto válido entre ${min} y ${max}.";

  static String m21(value) => "El valor debe comenzar con ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo debe contener solo letras.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere una cadena Base64 válida.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un código BIC válido.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un nombre de ciudad válido.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe estar en la lista de valores permitidos.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un país válido.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un código CVC válido para la tarjeta de crédito.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un número de tarjeta de crédito válido.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere una fecha de vencimiento válida para la tarjeta de crédito.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "La tarjeta de crédito ha expirado.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "La fecha debe estar en el futuro.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "La fecha debe estar en el pasado.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere una cadena de fecha válida.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un número DUNS válido.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere una dirección de correo electrónico válida.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un número par.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un nombre de archivo válido.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un nombre válido.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un número de punto flotante válido.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un número hexadecimal válido.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un IBAN válido.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un entero válido.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Tipo MIME inválido.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere una IP válida.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un ISBN válido.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un JSON válido.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un código de idioma válido.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un apellido válido.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere una latitud válida.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser una placa de matrícula válida.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere una longitud válida.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere letras minúsculas.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere una dirección MAC válida.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor no coincide con el patrón requerido.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo debe ser falso.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo debe ser verdadero.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un número negativo.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor no debe ser cero.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser numérico.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un número impar.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un número de pasaporte válido.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere una ruta válida.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un número de teléfono válido.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un número positivo.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un número primo.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo no puede estar vacío.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo debe contener una sola línea de texto.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un número de Seguro Social válido.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un estado válido.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un nombre de calle válido.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere una hora válida.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser una zona horaria válida.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un valor único.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere letras mayúsculas.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere una dirección URL válida.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "El nombre de usuario no puede contener guiones.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "El nombre de usuario no puede contener puntos.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "El nombre de usuario no puede contener números.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "El nombre de usuario no puede contener espacios.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "El nombre de usuario no puede contener caracteres especiales.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "El nombre de usuario no puede contener guiones bajos.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un nombre de usuario válido.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requiere un UUID válido.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un VIN válido.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "El valor debe ser un código ZIP válido.",
    ),
  };
}
