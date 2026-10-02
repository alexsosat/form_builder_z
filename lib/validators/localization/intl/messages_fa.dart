// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fa locale. All the
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
  String get localeName => 'fa';

  static String m0(min, max) => "مقدار باید بین ${min} و ${max} باشد.";

  static String m1(colorCode) => "این ورودی به کد رنگ معتبر نیاز دارد.";

  static String m2(value) => "مقدار باید شامل ${value} باشد.";

  static String m3(min) => "این ورودی باید دارای یک حرف کوچک باشد.";

  static String m4(min) => "این ورودی باید دارای یک عدد باشد.";

  static String m5(min) => "این ورودی باید دارای یک کاراکتر خاص باشد.";

  static String m6(min) => "این ورودی باید دارای یک حرف بزرگ باشد.";

  static String m7(min, max) => "تاریخ باید در محدوده مجاز باشد.";

  static String m8(value) => "مقدار باید با ${value} پایان یابد.";

  static String m9(value) => "مقدار این ورودی باید برابر با ${value} باشد.";

  static String m10(length) => "طول مقدار باید برابر باشد ${length}.";

  static String m11(extensions) => "این ورودی به پسوند فایل معتبر نیاز دارد.";

  static String m12(fileSize, maxSize) =>
      "این فایل از حداکثر اندازه مجاز بیشتر است.";

  static String m13(max) => "مقدار باید برابر یا کمتر از ${max} باشد.";

  static String m14(maxLength) =>
      "طول مقدار باید کمتر یا برابر با ${maxLength} باشد.";

  static String m15(maxWordsCount) =>
      "مقدار باید تعداد کلمات کمتر یا مساوی با ${maxWordsCount} داشته باشد.";

  static String m16(min) => "مقدار باید برابر یا بیشتر از ${min} باشد.";

  static String m17(minLength) =>
      "طول مقدار باید بیشتر یا برابر با ${minLength} باشد.";

  static String m18(minWordsCount) =>
      "مقدار باید تعداد کلمات بیشتر یا مساوی با ${minWordsCount} داشته باشد.";

  static String m19(value) => "مقدار این ورودی نباید برابر با ${value} باشد.";

  static String m20(min, max) => "این ورودی به شماره پورت معتبر نیاز دارد.";

  static String m21(value) => "مقدار باید با ${value} شروع شود.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی باید فقط حروف الفبا را شامل شود.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به رشته معتبر Base64 نیاز دارد.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به شماره BIC معتبر نیاز دارد.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک نام شهر معتبر باشد.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید در لیست مقادیر مجاز باشد.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک کشور معتبر باشد.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به کد CVC معتبر کارت اعتباری نیاز دارد.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به شماره کارت اعتباری معتبر نیاز دارد.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به تاریخ انقضای معتبر کارت اعتباری نیاز دارد.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "کارت اعتباری منقضی شده است.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "تاریخ باید در آینده باشد.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "تاریخ باید در گذشته باشد.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به یک تاریخ معتبر نیاز دارد.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک شماره DUNS معتبر باشد.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به یک آدرس ایمیل معتبر نیاز دارد.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به یک عدد زوج نیاز دارد.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک نام فایل معتبر باشد.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک نام معتبر باشد.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک عدد اعشاری معتبر باشد.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک عدد هگزادسیمال معتبر باشد.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به شماره IBAN معتبر نیاز دارد.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به یک عدد صحیح معتبر نیاز دارد.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "نوع MIME نامعتبر است.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "این قسمت نیاز به یک IP معتبر دارد.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به شماره ISBN معتبر نیاز دارد.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به JSON معتبر نیاز دارد.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک کد زبان معتبر باشد.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک نام خانوادگی معتبر باشد.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به عرض جغرافیایی معتبر نیاز دارد.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک شماره پلاک معتبر باشد.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به طول جغرافیایی معتبر نیاز دارد.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به حروف کوچک نیاز دارد.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به آدرس MAC معتبر نیاز دارد.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار با الگو مطابقت ندارد.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی باید نادرست باشد.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی باید صحیح باشد.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک عدد منفی باشد.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار نباید صفر باشد.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید عددی باشد.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به یک عدد فرد نیاز دارد.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک شماره پاسپورت معتبر باشد.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به مسیر معتبر نیاز دارد.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به شماره تلفن معتبر نیاز دارد.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک عدد مثبت باشد.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک عدد اول باشد.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی نمی‌تواند خالی باشد.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی باید یک خط باشد.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک شماره تأمین اجتماعی معتبر باشد.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک ایالت معتبر باشد.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک نام خیابان معتبر باشد.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به زمان معتبر نیاز دارد.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک منطقه زمانی معتبر باشد.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی باید یکتا باشد.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به حروف بزرگ نیاز دارد.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به آدرس اینترنتی معتبر نیاز دارد.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "نام کاربری نمی‌تواند شامل خط پیوند باشد.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "نام کاربری نمی‌تواند شامل نقطه باشد.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "نام کاربری نمی‌تواند شامل اعداد باشد.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "نام کاربری نمی‌تواند شامل فاصله باشد.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "نام کاربری نمی‌تواند شامل کاراکترهای خاص باشد.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "نام کاربری نمی‌تواند شامل زیر خط باشد.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک نام کاربری معتبر باشد.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "این ورودی به UUID معتبر نیاز دارد.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک شماره VIN معتبر باشد.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "مقدار باید یک کد پستی معتبر باشد.",
    ),
  };
}
