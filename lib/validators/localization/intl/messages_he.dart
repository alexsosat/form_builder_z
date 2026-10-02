// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a he locale. All the
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
  String get localeName => 'he';

  static String m0(min, max) => "הערך חייב להיות בין ${min} לבין ${max}.";

  static String m1(colorCode) => "שדה זה דורש קוד צבע תקין.";

  static String m2(value) => "הערך חייב להכיל את ${value}.";

  static String m3(min) => "שדה זה חייב להכיל אות קטנה.";

  static String m4(min) => "שדה זה חייב להכיל מספר.";

  static String m5(min) => "שדה זה חייב להכיל תו מיוחד.";

  static String m6(min) => "שדה זה חייב להכיל אות רישית.";

  static String m7(min, max) => "התאריך חייב להיות בטווח המותר.";

  static String m8(value) => "הערך חייב להסתיים עם ${value}.";

  static String m9(value) => "ערך זה חייב להיות שווה ל ${value}.";

  static String m10(length) => "ערך זה חייב להיות באורך שווה ל ${length}.";

  static String m11(extensions) => "שדה זה דורש סיומת קובץ תקינה.";

  static String m12(fileSize, maxSize) => "קובץ זה חורג מהגודל המותר.";

  static String m13(max) => "ערך זה חייב להיות קטן או שווה ל ${max}.";

  static String m14(maxLength) =>
      "ערך זה חייב להיות באורך קטן או שווה ל ${maxLength}.";

  static String m15(maxWordsCount) =>
      "ערך זה חייב להיות באורך מילים קטן או שווה ל ${maxWordsCount}.";

  static String m16(min) => "ערך זה חייב להיות גדול או שווה ל ${min}.";

  static String m17(minLength) =>
      "ערך זה חייב להיות באורך גדול או שווה ל ${minLength}.";

  static String m18(minWordsCount) =>
      "ערך זה חייב להיות באורך מילים גדול או שווה ל ${minWordsCount}.";

  static String m19(value) => "ערך זה חייב להיות שונה מ ${value}.";

  static String m20(min, max) => "שדה זה דורש מספר פורט תקין.";

  static String m21(value) => "הערך חייב להתחיל עם ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה חייב להכיל אותיות בלבד.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש מחרוזת Base64 תקינה.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש מזהה BIC תקין.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות שם עיר חוקי.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות ברשימת הערכים המותרים.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מדינה חוקית.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש קוד CVC תקין לכרטיס האשראי.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש מספר כרטיס אשראי תקין.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש תאריך תפוגה תקין לכרטיס האשראי.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "כרטיס האשראי פג תוקף.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "התאריך חייב להיות בעתיד.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "התאריך חייב להיות בעבר.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש מחרוזת תאריך תקינה.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מספר DUNS חוקי.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש כתובת דוא\"ל תקינה.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש מספר זוגי.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות שם קובץ תקין.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות שם פרטי חוקי.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מספר נקודה צפה חוקי.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מספר הקסדצימלי חוקי.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש מספר IBAN תקין.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש מספר שלם תקין.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "סוג MIME לא חוקי.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש כתובת IP תקינה.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש מספר ISBN תקין.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש JSON תקין.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות קוד שפה חוקי.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות שם משפחה חוקי.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש קו רוחב תקין.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מספר רכב חוקי.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש קו אורך תקין.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש אותיות קטנות.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש כתובת MAC תקינה.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "ערך זה אינו תואם לתבנית.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה חייב להיות שגוי.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה חייב להיות נכון.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מספר שלילי.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך לא יכול להיות אפס.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "ערך זה חייב להיות מספרי.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש מספר אי זוגי.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מספר דרכון חוקי.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש נתיב תקין.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש מספר טלפון תקין.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מספר חיובי.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מספר ראשוני.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה אינו יכול להיות ריק.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש שורה יחידה.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מספר סודי חברתי תקין.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מדינה חוקית.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות שם רחוב חוקי.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש שעה תקינה.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות אזור זמן חוקי.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש ערך ייחודי.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש אותיות רישיות.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש כתובת URL תקינה.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage("שם המשתמש לא יכול להכיל מקפים."),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "שם המשתמש לא יכול להכיל נקודות.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage("שם המשתמש לא יכול להכיל מספרים."),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage("שם המשתמש לא יכול להכיל רווחים."),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "שם המשתמש לא יכול להכיל תווים מיוחדים.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "שם המשתמש לא יכול להכיל קו תחתון.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות שם משתמש תקין.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "שדה זה דורש UUID תקין.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מספר VIN חוקי.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "הערך חייב להיות מיקוד תקין.",
    ),
  };
}
