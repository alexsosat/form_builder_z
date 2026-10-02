// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(min, max) => "القيمة يجب أن تكون بين ${min} و ${max}.";

  static String m1(colorCode) => "هذا الحقل يتطلب رمز لون صالح.";

  static String m2(value) => "القيمة يجب أن تحتوي على ${value}.";

  static String m3(min) => "هذا الحقل يجب أن يحتوي على حرف صغير.";

  static String m4(min) => "هذا الحقل يجب أن يحتوي على رقم.";

  static String m5(min) => "هذا الحقل يجب أن يحتوي على حرف خاص.";

  static String m6(min) => "هذا الحقل يجب أن يحتوي على حرف كبير.";

  static String m7(min, max) => "التاريخ يجب أن يكون ضمن النطاق المسموح به.";

  static String m8(value) => "القيمة يجب أن تنتهي بـ ${value}.";

  static String m9(value) => "يجب أن تكون القيمة المدخلة مساوية لـ ${value}.";

  static String m10(length) => "يجب أن يكون طول القيمة يساوي ${length}";

  static String m11(extensions) => "هذا الحقل يتطلب امتداد ملف صالح.";

  static String m12(fileSize, maxSize) =>
      "حجم هذا الملف يتجاوز الحجم المسموح به.";

  static String m13(max) => "يجب أن لا تزيد القيمة المدخلة عن ${max}.";

  static String m14(maxLength) =>
      "يجب أن لا يزيد طول القيمة المدخلة عن ${maxLength}.";

  static String m15(maxWordsCount) =>
      "يجب أن لا يزيد عدد الكلمات المدخلة عن ${maxWordsCount}.";

  static String m16(min) => "يجب أن لا تقل القيمة المدخلة عن ${min}.";

  static String m17(minLength) =>
      "يجب أن لا يقل طول القيمة المدخلة عن ${minLength}.";

  static String m18(minWordsCount) =>
      "يجب أن لا يقل عدد الكلمات المدخلة عن ${minWordsCount}.";

  static String m19(value) =>
      "يجب أن لا تكون القيمة المدخلة مساوية لـ ${value}.";

  static String m20(min, max) => "هذا الحقل يتطلب رقما صالحا للمنفذ.";

  static String m21(value) => "القيمة يجب أن تبدأ بـ ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يجب أن يحتوي على حروف أبجدية فقط.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب سلسلة Base64 صالحة.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب رمز BIC صالح.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة اسم مدينة صالح.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "القيمة يجب أن تكون ضمن القائمة المسموح بها.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة بلد صالح.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب رمز CVC صالح للبطاقة الائتمانية.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "القيمة المدخلة لا تصلح كرقم بطاقة إئتمانية.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب تاريخ انتهاء صالح للبطاقة الائتمانية.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "البطاقة الائتمانية منتهية الصلاحية.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن يكون التاريخ في المستقبل.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن يكون التاريخ في الماضي.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب تاريخا صالحا.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة رقم DUNS صالح.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب عنوان بريد إلكتروني صالح.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب رقما زوجيا.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة اسم ملف صحيح.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة اسمًا أول صالحًا.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة رقم عشري صالح.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة رقم سداسي عشري صالح.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب IBAN صالح.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "القيمة المدخلة ليست رقما صحيحا.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "نوع الميم غير صالح",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب عنوان IP صالح.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب رقم ISBN صالح.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب JSON صالح.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة رمز لغة صالح.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة اسم عائلة صالحًا.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب دائرة عرض صالحة.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة لوحة ترخيص صالحة.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب خط طول صالح.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب حروفا صغيرة.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب عنوان MAC صالح.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "القيمة المدخلة لا تطابق الصيغة المطلوبة.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون هذه القيمة خاطئة.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون هذه القيمة صحيحة.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة عددًا سالبًا.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب ألا تكون القيمة صفراً.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "القيمة المدخلة ليست رقما.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب رقما فرديا.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة رقم جواز سفر صالح.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب مسارا صالحا.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب رقم هاتف صالح.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة عددًا موجبًا.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة عدد أولي.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يجب ملؤه.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يجب أن يحتوي على سطر واحد فقط.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة رقم تأمين اجتماعي صحيح.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة ولاية صالحة.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة اسم شارع صالح.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب وقت صالح.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة منطقة زمنية صالحة.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يجب أن يحتوي على قيمة فريدة.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب حروفا كبيرة.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب عنوان URL صالح.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "لا يمكن لاسم المستخدم أن يحتوي على شرطات.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "لا يمكن لاسم المستخدم أن يحتوي على نقاط.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "لا يمكن لاسم المستخدم أن يحتوي على أرقام.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "لا يمكن لاسم المستخدم أن يحتوي على مسافات.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "لا يمكن لاسم المستخدم أن يحتوي على أحرف خاصة.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "لا يمكن لاسم المستخدم أن يحتوي على شرطة سفلية.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة اسم مستخدم صالح.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "هذا الحقل يتطلب UUID صالح.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة رقم VIN صالح.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "يجب أن تكون القيمة رمز بريدي صحيح.",
    ),
  };
}
