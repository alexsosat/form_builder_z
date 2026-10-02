// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(min, max) => "Значение должно быть между ${min} и ${max}.";

  static String m1(colorCode) =>
      "Поле должно быть действительным цветовым кодом.";

  static String m2(value) => "Значение должно содержать ${value}.";

  static String m3(min) => "Поле должно содержать строчные буквы.";

  static String m4(min) => "Поле должно содержать цифры.";

  static String m5(min) => "Поле должно содержать специальный символ.";

  static String m6(min) => "Поле должно содержать заглавные буквы.";

  static String m7(min, max) => "Дата должна быть в допустимом диапазоне.";

  static String m8(value) => "Значение должно заканчиваться на ${value}.";

  static String m9(value) => "Значение поля должно быть равно ${value}.";

  static String m10(length) => "Значение должно иметь длину, равную ${length}.";

  static String m11(extensions) =>
      "Поле должно быть действительным расширением файла.";

  static String m12(fileSize, maxSize) =>
      "Файл превышает максимально допустимый размер.";

  static String m13(max) => "Значение должно быть меньше или равно ${max}.";

  static String m14(maxLength) =>
      "Длина значения должна быть меньше или равна ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Значение должно иметь количество слов, меньшее или равное ${maxWordsCount}.";

  static String m16(min) => "Значение должно быть больше или равно ${min}.";

  static String m17(minLength) =>
      "Длина значения должна быть больше или равна ${minLength}.";

  static String m18(minWordsCount) =>
      "Значение должно иметь количество слов, большее или равное ${minWordsCount}.";

  static String m19(value) => "Значение поля не должно быть равно ${value}.";

  static String m20(min, max) =>
      "Поле должно быть действительным номером порта.";

  static String m21(value) => "Значение должно начинаться с ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно содержать только буквы.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительной строкой Base64.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительным BIC кодом.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным названием города.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть в списке допустимых значений.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным названием страны.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительным CVC кодом кредитной карты.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение поля должно быть номером кредитной карты.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительной датой истечения срока действия кредитной карты.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Срок действия кредитной карты истек.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Дата должна быть в будущем.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Дата должна быть в прошлом.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть датой.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным номером DUNS.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть email адресом.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть четным числом.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть допустимым именем файла.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным именем.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть допустимым числом с плавающей запятой.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть допустимым шестнадцатеричным числом.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительным IBAN номером.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть целым числом.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Неверный MIME-тип.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть IP адресом.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительным ISBN номером.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительным JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным кодом языка.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительной фамилией.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительной широтой.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным номером номерного знака.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительной долготой.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно содержать строчные буквы.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительным MAC адресом.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно удовлетворять шаблону.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть ложным.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть истинным.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть отрицательным числом.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение не должно быть нулевым.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть числом.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть нечетным числом.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным номером паспорта.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительным путем.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть номером телефона.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть положительным числом.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть простым числом.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле не может быть пустым.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно содержать только одну строку.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным номером социального страхования.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным названием штата.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным названием улицы.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительным временем.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным часовым поясом.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть уникальным.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно содержать заглавные буквы.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть URL адресом.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Имя пользователя не может содержать дефисы.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Имя пользователя не может содержать точки.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Имя пользователя не может содержать цифры.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Имя пользователя не может содержать пробелы.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Имя пользователя не может содержать специальные символы.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Имя пользователя не может содержать символ подчеркивания.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть допустимым именем пользователя.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле должно быть действительным UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть действительным VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Значение должно быть допустимым почтовым индексом.",
    ),
  };
}
