// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a th locale. All the
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
  String get localeName => 'th';

  static String m0(min, max) => "ข้อมูลนี้ต้องอยู่ระหว่าง ${min} และ ${max}";

  static String m1(colorCode) => "ข้อมูลนี้ต้องเป็นรหัสสีที่ถูกต้อง";

  static String m2(value) => "ข้อมูลนี้ต้องประกอบด้วย ${value}";

  static String m3(min) => "ข้อมูลนี้ต้องมีอักษรตัวเล็ก";

  static String m4(min) => "ข้อมูลนี้ต้องมีตัวเลข";

  static String m5(min) => "ข้อมูลนี้ต้องมีอักขระพิเศษ";

  static String m6(min) => "ข้อมูลนี้ต้องมีอักษรตัวใหญ่";

  static String m7(min, max) => "วันที่ต้องอยู่ในช่วงที่กำหนด";

  static String m8(value) => "ข้อมูลนี้ต้องลงท้ายด้วย ${value}";

  static String m9(value) => "ข้อมูลนี้ต้องเท่ากับ ${value} เท่านั้น";

  static String m10(length) => "ความยาวตัวอักษาต้องมีจำนวนเท่ากับ ${length}";

  static String m11(extensions) => "ข้อมูลนี้ต้องเป็นนามสกุลไฟล์ที่ถูกต้อง";

  static String m12(fileSize, maxSize) => "ไฟล์นี้มีขนาดใหญ่เกินไป";

  static String m13(max) => "ข้อมูลนี้ต้องมีค่าน้อยกว่าหรือเท่ากับ ${max}";

  static String m14(maxLength) =>
      "ความยาวตัวอักษาต้องมีจำนวนน้อยกว่าหรือเท่ากับ ${maxLength}";

  static String m15(maxWordsCount) =>
      "ค่าจะต้องมีคำนับน้อยกว่าหรือเท่ากับ ${maxWordsCount}";

  static String m16(min) => "ข้อมูลนี้ต้องมีค่ามากกว่าหรือเท่ากับ ${min}";

  static String m17(minLength) =>
      "ความยาวตัวอักษาต้องมีจำนวนมากกว่าหรือเท่ากับ ${minLength}";

  static String m18(minWordsCount) =>
      "ค่าจะต้องมีคำจำนวนมากกว่าหรือเท่ากับ ${minWordsCount}";

  static String m19(value) => "ข้อมูลนี้ต้องไม่เท่ากับ ${value}";

  static String m20(min, max) => "ข้อมูลนี้ต้องเป็นหมายเลขพอร์ตที่ถูกต้อง";

  static String m21(value) => "ข้อมูลนี้ต้องขึ้นต้นด้วย ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องมีเฉพาะตัวอักษร",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็น Base64 ที่ถูกต้อง",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นรหัส BIC ที่ถูกต้อง",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นชื่อเมืองที่ถูกต้อง",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องอยู่ในรายการค่าที่อนุญาต",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นประเทศที่ถูกต้อง",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นรหัส CVC ของบัตรเครดิตที่ถูกต้อง",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นเลขบัตรเครดิตเท่านั้น",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นวันหมดอายุของบัตรเครดิตที่ถูกต้อง",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "บัตรเครดิตนี้หมดอายุแล้ว",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "วันที่ต้องอยู่ในอนาคต",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "วันที่ต้องอยู่ในอดีต",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นวันที่เท่านั้น",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นเลข DUNS ที่ถูกต้อง",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "กรุณาระบุ email ของคุณ",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นเลขคู่",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นชื่อไฟล์ที่ถูกต้อง",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นชื่อจริงที่ถูกต้อง",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นตัวเลขทศนิยมที่ถูกต้อง",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นเลขฐานสิบหกที่ถูกต้อง",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็น IBAN ที่ถูกต้อง",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นตัวเลขเท่านั้น",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "ประเภท mime ไม่ถูกต้อง",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็น IP เท่านั้น",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็น ISBN ที่ถูกต้อง",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็น JSON ที่ถูกต้อง",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นรหัสภาษาที่ถูกต้อง",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นนามสกุลที่ถูกต้อง",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นค่าละติจูดที่ถูกต้อง",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นเลขทะเบียนรถที่ถูกต้อง",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นค่าลองจิจูดที่ถูกต้อง",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นตัวอักษรพิมพ์เล็ก",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็น MAC address ที่ถูกต้อง",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ไม่ตรงกับรูปแบบที่ระบุไว้",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นเท็จ",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นจริง",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นจำนวนติดลบ",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องไม่เป็นศูนย์",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นตัวเลขเท่านั้น",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นเลขคี่",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นหมายเลขหนังสือเดินทางที่ถูกต้อง",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นเส้นทางที่ถูกต้อง",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นเบอร์โทรศัพท์ที่ถูกต้อง",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นจำนวนบวก",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นเลขเฉพาะที่ถูกต้อง",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "กรุณาระบุข้อมูล",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นข้อความในบรรทัดเดียว",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นหมายเลขประจำตัวประชาชนที่ถูกต้อง",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นรัฐที่ถูกต้อง",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นชื่อถนนที่ถูกต้อง",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นเวลาที่ถูกต้อง",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นเขตเวลาที่ถูกต้อง",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นค่าที่ไม่ซ้ำกัน",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็นตัวอักษรพิมพ์ใหญ่",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็น URL address เท่านั้น",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage("ชื่อผู้ใช้ต้องไม่มีขีดกลาง"),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "ชื่อผู้ใช้ต้องไม่มีจุด",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage("ชื่อผู้ใช้ต้องไม่มีตัวเลข"),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage("ชื่อผู้ใช้ต้องไม่มีช่องว่าง"),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage("ชื่อผู้ใช้ต้องไม่มีอักขระพิเศษ"),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage("ชื่อผู้ใช้ต้องไม่มีขีดเส้นใต้"),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นชื่อผู้ใช้ที่ถูกต้อง",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "ข้อมูลนี้ต้องเป็น UUID ที่ถูกต้อง",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นหมายเลข VIN ที่ถูกต้อง",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "ค่าต้องเป็นรหัสไปรษณีย์ที่ถูกต้อง",
    ),
  };
}
