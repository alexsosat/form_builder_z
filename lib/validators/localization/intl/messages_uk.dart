// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
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
  String get localeName => 'uk';

  static String m0(min, max) => "Значення має бути між ${min} і ${max}.";

  static String m1(colorCode) => "Поле має бути дійсним кольоровим кодом.";

  static String m2(value) => "Значення має містити ${value}.";

  static String m3(min) => "Поле має містити малі літери.";

  static String m4(min) => "Поле має містити число.";

  static String m5(min) => "Поле має містити спеціальний символ.";

  static String m6(min) => "Поле має містити великі літери.";

  static String m7(min, max) => "Дата має бути в дозволеному діапазоні.";

  static String m8(value) => "Значення має закінчуватися на ${value}.";

  static String m9(value) => "Значення поля має дорівнювати ${value}.";

  static String m10(length) =>
      "Значення повинно мати довжину, рівну ${length}.";

  static String m11(extensions) => "Поле має бути дійсним розширенням файлу.";

  static String m12(fileSize, maxSize) =>
      "Цей файл перевищує максимально допустимий розмір.";

  static String m13(max) => "Значення має бути менше або дорівнювати ${max}.";

  static String m14(maxLength) =>
      "Довжина значення має бути менше або дорівнювати ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Значення повинно мати кількість слів менше або дорівнювати ${maxWordsCount}.";

  static String m16(min) => "Значення має бути більше або дорівнювати ${min}.";

  static String m17(minLength) =>
      "Довжина значення має бути більше або дорівнювати ${minLength}.";

  static String m18(minWordsCount) =>
      "Значення повинно мати кількість слів більше або дорівнювати ${minWordsCount}.";

  static String m19(value) => "Значення поля не повинно дорівнювати ${value}.";

  static String m20(min, max) => "Поле має бути дійсним номером порту.";

  static String m21(value) => "Значення має починатися з ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має містити тільки літери.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсним рядком Base64.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсним BIC кодом.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним назвою міста.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення має бути в списку дозволених значень.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсною країною.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсним CVC кодом кредитної картки.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення поля має бути номером кредитної картки.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсною датою закінчення терміну дії кредитної картки.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Термін дії кредитної картки закінчився.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Дата повинна бути у майбутньому.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Дата повинна бути в минулому.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути датою.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним номером DUNS.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути email адресою.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути парним числом.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним ім\'ям файлу.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним ім\'ям.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним числом з плаваючою комою.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним шістнадцятковим числом.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсним IBAN номером.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути цілим числом.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Недійсний MIME тип.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути IP адресою.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсним ISBN номером.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсним JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним кодом мови.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним прізвищем.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсною широтою.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним номерним знаком автомобіля.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсною довготою.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має містити малі літери.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсною MAC адресою.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення має відповідати шаблону.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути хибним.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути істинним.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути від\'ємним числом.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення не повинно бути нулем.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення має бути числом.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути непарним числом.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним номером паспорта.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсним шляхом.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсним номером телефону.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути позитивним числом.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути простим числом.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле не може бути порожнім.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути однорядковим.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним номером соціального страхування.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним штатом.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсною назвою вулиці.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсним часом.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним часовим поясом.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути унікальним.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має містити великі літери.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути URL адресою.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Ім\'я користувача не може містити дефіси.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Ім\'я користувача не може містити крапки.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Ім\'я користувача не може містити цифри.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Ім\'я користувача не може містити пробіли.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Ім\'я користувача не може містити спеціальні символи.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Ім\'я користувача не може містити символ підкреслення.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення має бути дійсним ім\'ям користувача.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Поле має бути дійсним UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Значення повинно бути дійсним поштовим індексом.",
    ),
  };
}
