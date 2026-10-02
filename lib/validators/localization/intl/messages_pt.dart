// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
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
  String get localeName => 'pt';

  static String m0(min, max) => "O valor deve estar entre ${min} e ${max}.";

  static String m1(colorCode) => "Este campo requer um código de cor válido.";

  static String m2(value) => "O valor deve conter ${value}.";

  static String m3(min) => "Este campo deve conter uma letra minúscula.";

  static String m4(min) => "Este campo deve conter um número.";

  static String m5(min) => "Este campo deve conter um caractere especial.";

  static String m6(min) => "Este campo deve conter uma letra maiúscula.";

  static String m7(min, max) =>
      "A data deve estar dentro do intervalo permitido.";

  static String m8(value) => "O valor deve terminar com ${value}.";

  static String m9(value) => "Este valor de campo deve ser igual a ${value}.";

  static String m10(length) =>
      "O valor deve ter um comprimento igual a ${length}.";

  static String m11(extensions) =>
      "Este campo requer uma extensão de arquivo válida.";

  static String m12(fileSize, maxSize) =>
      "Este arquivo excede o tamanho máximo permitido.";

  static String m13(max) => "O valor deve ser menor ou igual a ${max}.";

  static String m14(maxLength) =>
      "O valor deve ter um comprimento menor ou igual a ${maxLength}.";

  static String m15(maxWordsCount) =>
      "O valor deve ter uma contagem de palavras menor ou igual a ${maxWordsCount}.";

  static String m16(min) => "O valor deve ser maior ou igual a ${min}.";

  static String m17(minLength) =>
      "O valor deve ter um comprimento maior ou igual a ${minLength}.";

  static String m18(minWordsCount) =>
      "O valor deve ter uma contagem de palavras maior ou igual a ${minWordsCount}.";

  static String m19(value) => "O valor não deve ser igual a ${value}.";

  static String m20(min, max) => "Este campo requer um número de porta válido.";

  static String m21(value) => "O valor deve começar com ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo deve conter apenas letras.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer uma string Base64 válida.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um código BIC válido.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um nome de cidade válido.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve estar na lista de valores permitidos.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um país válido.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um código CVC do cartão de crédito válido.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um número de cartão de crédito válido.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer uma data de validade do cartão de crédito válida.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "O cartão de crédito está expirado.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Data deve estar no futuro.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Data deve estar no passado.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer uma string de data válida.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um número DUNS válido.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um endereço de e-mail válido.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um número par.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um nome de arquivo válido.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um primeiro nome válido.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um número de ponto flutuante válido.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um número hexadecimal válido.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um IBAN válido.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um número inteiro válido.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Tipo MIME inválido.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um IP válido.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um ISBN válido.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um JSON válido.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um código de idioma válido.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um sobrenome válido.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer uma latitude válida.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser uma placa de licença válida.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer uma longitude válida.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer letras minúsculas.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um endereço MAC válido.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor não corresponde ao padrão.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo deve ser falso.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo deve ser verdadeiro.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um número negativo.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor não pode ser zero.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser numérico.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um número ímpar.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um número de passaporte válido.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um caminho válido.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um número de telefone válido.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um número positivo.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um número primo.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo não pode ficar vazio.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo deve conter apenas uma linha.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um Número de Seguro Social válido.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um estado válido.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um nome de rua válido.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer uma hora válida.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um fuso horário válido.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um valor único.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer letras maiúsculas.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um endereço de URL válido.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "O nome de usuário não pode conter traços.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "O nome de usuário não pode conter pontos.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "O nome de usuário não pode conter números.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "O nome de usuário não pode conter espaços.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "O nome de usuário não pode conter caracteres especiais.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "O nome de usuário não pode conter sublinhados.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um nome de usuário válido.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Este campo requer um UUID válido.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um VIN válido.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "O valor deve ser um código postal válido.",
    ),
  };
}
