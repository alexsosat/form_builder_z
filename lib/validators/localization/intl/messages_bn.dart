// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a bn locale. All the
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
  String get localeName => 'bn';

  static String m0(min, max) => "মানটি ${min} এবং ${max} এর মধ্যে হতে হবে।";

  static String m1(colorCode) => "একটি বৈধ রঙের কোড প্রয়োজন।";

  static String m2(value) => "মানটি ${value} ধারণ করতে হবে।";

  static String m3(min) => "এই ফিল্ডে একটি ছোট হাতের অক্ষর থাকতে হবে।";

  static String m4(min) => "এই ফিল্ডে একটি সংখ্যা থাকতে হবে।";

  static String m5(min) => "এই ফিল্ডে একটি বিশেষ অক্ষর থাকতে হবে।";

  static String m6(min) => "এই ফিল্ডে একটি বড় হাতের অক্ষর থাকতে হবে।";

  static String m7(min, max) => "তারিখটি অনুমোদিত সীমার মধ্যে হতে হবে।";

  static String m8(value) => "মানটি ${value} দিয়ে শেষ হতে হবে।";

  static String m9(value) => "মান ${value} সমান হতে হবে।";

  static String m10(length) => "মানটির দৈর্ঘ্য ${length} সমান হতে হবে।";

  static String m11(extensions) => "একটি বৈধ ফাইল এক্সটেনশন প্রয়োজন।";

  static String m12(fileSize, maxSize) =>
      "এই ফাইলটি সর্বাধিক অনুমোদিত আকার ছাড়িয়ে গেছে।";

  static String m13(max) => "মান অবশ্যই ${max} এর কম বা সমান হতে হবে।";

  static String m14(maxLength) =>
      "মান অবশ্যই ${maxLength} এর থেকে কম বা সমান সংখ্যা হতে হবে।";

  static String m15(maxWordsCount) =>
      "মান অবশ্যই একটি শব্দের গণনা থাকতে হবে ${maxWordsCount} এর চেয়ে কম বা সমান।";

  static String m16(min) => "মান অবশ্যই ${min} এর থেকে বেশি বা সমান হতে হবে।";

  static String m17(minLength) =>
      "মান অবশ্যই ${minLength} এর চেয়ে বেশি বা সমান সংখ্যা হতে হবে।";

  static String m18(minWordsCount) =>
      "মান অবশ্যই একটি শব্দের গণনা থাকতে হবে ${minWordsCount} এর চেয়ে বেশি বা সমান।";

  static String m19(value) => "মান ${value} এর সমান হওয়া উচিত নয়।";

  static String m20(min, max) => "একটি বৈধ পোর্ট নম্বর প্রয়োজন।";

  static String m21(value) => "মানটি ${value} দিয়ে শুরু হতে হবে।";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "এই ফিল্ডে কেবল বর্ণমালা থাকা উচিত।",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ Base64 স্ট্রিং প্রয়োজন।",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ BIC প্রয়োজন।",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ শহরের নাম হতে হবে।",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি অনুমোদিত তালিকার মধ্যে থাকতে হবে।",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ দেশের হতে হবে।",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ ক্রেডিট কার্ড CVC কোড প্রয়োজন।",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "বৈধ ক্রেডিট কার্ড নম্বর প্রয়োজন।",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ ক্রেডিট কার্ডের মেয়াদ শেষের তারিখ প্রয়োজন।",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "ক্রেডিট কার্ডের মেয়াদ শেষ হয়ে গেছে।",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "তারিখ ভবিষ্যতে থাকতে হবে।",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "তারিখ অতীতে থাকতে হবে।",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ তারিখ প্রয়োজন।",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ DUNS নম্বর হতে হবে।",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ ইমেল আইডি প্রয়োজন।",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "এই ফিল্ডে একটি জোড় সংখ্যা থাকতে হবে।",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ ফাইল নাম হতে হবে।",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ প্রথম নাম হতে হবে।",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "মান একটি বৈধ ভাসমান বিন্দু সংখ্যা হতে হবে।",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "মান একটি বৈধ হেক্সাডেসিমাল সংখ্যা হতে হবে।",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ IBAN প্রয়োজন।",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "মান অবশ্যই একটি পূর্ণসংখ্যা হতে হবে।",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "অবৈধ মাইম টাইপ।",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ আইপি এড্রেস প্রয়োজন।",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ ISBN প্রয়োজন।",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ JSON প্রয়োজন।",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ ভাষা কোড হতে হবে।",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ শেষ নাম হতে হবে।",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ অক্ষাংশ প্রয়োজন।",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ লাইসেন্স প্লেট হতে হবে।",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ দ্রাঘিমাংশ প্রয়োজন।",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "এই ফিল্ডে ছোট হাতের অক্ষর প্রয়োজন।",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ MAC ঠিকানা প্রয়োজন।",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "মান প্যাটার্নের সাথে মেলে না।",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "এই ফিল্ডটি মিথ্যা হতে হবে।",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "এই ফিল্ডটি সত্য হতে হবে।",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি নেতিবাচক সংখ্যা হতে হবে।",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি শূন্য না হতে হবে।",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "মান অবশ্যই সংখ্যায় হতে হবে।",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "এই ফিল্ডে একটি বিজোড় সংখ্যা থাকতে হবে।",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ পাসপোর্ট নম্বর হতে হবে।",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ পাথ প্রয়োজন।",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ ফোন নম্বর প্রয়োজন।",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি ধনাত্মক সংখ্যা হতে হবে।",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি মৌলিক সংখ্যা হতে হবে।",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "খালি রাখা যাবে না।",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "এই ফিল্ডে একটি একক লাইন থাকতে হবে।",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ সোশ্যাল সিকিউরিটি নম্বর হতে হবে।",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ রাজ্যের হতে হবে।",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ রাস্তার নাম হতে হবে।",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ সময় প্রয়োজন।",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ সময় অঞ্চল হতে হবে।",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি অবশ্যই অনন্য মানগুলির মধ্যে অদ্বিতীয় হতে হবে।",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "এই ফিল্ডে বড় হাতের অক্ষর প্রয়োজন।",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ ওয়েব এড্রেস প্রয়োজন।",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "ব্যবহারকারীর নামের মধ্যে ড্যাশ থাকতে পারবে না।",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "ব্যবহারকারীর নামের মধ্যে বিন্দু থাকতে পারবে না।",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "ব্যবহারকারীর নামের মধ্যে সংখ্যা থাকতে পারবে না।",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "ব্যবহারকারীর নামের মধ্যে স্পেস থাকতে পারবে না।",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "ব্যবহারকারীর নামের মধ্যে বিশেষ অক্ষর থাকতে পারবে না।",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "ব্যবহারকারীর নামের মধ্যে আন্ডারস্কোর থাকতে পারবে না।",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ ব্যবহারকারীর নাম হতে হবে।",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "একটি বৈধ UUID প্রয়োজন।",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ VIN হতে হবে।",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "মানটি একটি বৈধ জিপ কোড হতে হবে।",
    ),
  };
}
