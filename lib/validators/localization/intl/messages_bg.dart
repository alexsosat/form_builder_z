// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a bg locale. All the
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
  String get localeName => 'bg';

  static String m0(min, max) => "Стойността трябва да е между ${min} и ${max}.";

  static String m1(colorCode) => "Това поле изисква валиден цветен код.";

  static String m2(value) => "Стойността трябва да съдържа ${value}.";

  static String m3(min) => "Това поле трябва да съдържа малка буква.";

  static String m4(min) => "Това поле трябва да съдържа число.";

  static String m5(min) => "Това поле трябва да съдържа специален символ.";

  static String m6(min) => "Това поле трябва да съдържа главна буква.";

  static String m7(min, max) => "Датата трябва да е в разрешения диапазон.";

  static String m8(value) => "Стойността трябва да завършва с ${value}.";

  static String m9(value) =>
      "Стойността на това поле трябва да е равна на ${value}.";

  static String m10(length) =>
      "Стойността трябва да има дължина, равна на ${length}";

  static String m11(extensions) =>
      "Това поле изисква валидно файлово разширение.";

  static String m12(fileSize, maxSize) =>
      "Този файл надвишава максимално допустимия размер.";

  static String m13(max) =>
      "Стойността трябва да е по-малка или равна на ${max}";

  static String m14(maxLength) =>
      "Стойността трябва да има дължина, по-малка или равна на ${maxLength}";

  static String m15(maxWordsCount) =>
      "Стойността трябва да има брой думи, по-малък или равен на ${maxWordsCount}";

  static String m16(min) =>
      "Стойността трябва да е по-голяма или равна на ${min}";

  static String m17(minLength) =>
      "Стойността трябва да има дължина, по-голяма или равна на ${minLength}";

  static String m18(minWordsCount) =>
      "Стойността трябва да има брой думи, по-голям или равен на ${minWordsCount}";

  static String m19(value) =>
      "Стойността на това поле не трябва да е равна на ${value}.";

  static String m20(min, max) => "Това поле изисква валиден номер на порт.";

  static String m21(value) => "Стойността трябва да започва с ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле трябва да съдържа само букви.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден низ в Base64 формат.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден BIC код.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валидно име на град.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да е в списъка с допустими стойности.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валидна държава.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден CVC код на кредитната карта.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден номер на кредитна карта.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валидна дата на изтичане на кредитната карта.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Кредитната карта е с изтекъл срок.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Дата трябва да бъде в бъдещето.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Дата трябва да бъде в миналото.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден низ за дата.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валиден DUNS номер.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден имейл адрес.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква четно число.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валидно име на файл.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валидно собствено име.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валидно число с плаваща запетая.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валиден шестнадесетичен номер.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валидно цяло число.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Невалиден MIME тип.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден IP.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден ISBN номер.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валиден езиков код.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валидно фамилно име.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валидна географска ширина.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валиден регистрационен номер.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валидна географска дължина.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква малки букви.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден MAC адрес.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността не съответства на модела.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле трябва да е невярно.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле трябва да е истина.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде отрицателно число.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността не трябва да бъде нула.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да е числова.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква нечетно число.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валиден номер на паспорт.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден път.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден телефонен номер.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде положително число.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде просто число.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле не може да бъде празно.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле трябва да съдържа само един ред.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валиден номер за социално осигуряване.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валиден щат.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валидно име на улица.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валидно време.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валидна часова зона.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква уникална стойност.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква главни букви.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден URL адрес.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Потребителското име не може да съдържа тирета.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Потребителското име не може да съдържа точки.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Потребителското име не може да съдържа цифри.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Потребителското име не може да съдържа интервали.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Потребителското име не може да съдържа специални символи.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Потребителското име не може да съдържа долна черта.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валидно потребителско име.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Това поле изисква валиден UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валиден VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Стойността трябва да бъде валиден пощенски код.",
    ),
  };
}
