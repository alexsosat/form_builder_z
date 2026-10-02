// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hant locale. All the
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
  String get localeName => 'zh_Hant';

  static String m0(min, max) => "值必須在 ${min} 和 ${max} 之間。";

  static String m1(colorCode) => "此欄位需要有效的顏色代碼。";

  static String m2(value) => "值必須包含 ${value}。";

  static String m3(min) => "此欄位需要包含小寫字母。";

  static String m4(min) => "此欄位需要包含數字。";

  static String m5(min) => "此欄位需要包含特殊字符。";

  static String m6(min) => "此欄位需要包含大寫字母。";

  static String m7(min, max) => "日期必須在允許的範圍內。";

  static String m8(value) => "值必須以 ${value} 結尾。";

  static String m9(value) => "此欄位必須與 ${value} 相符";

  static String m10(length) => "值必須具有等於 ${length} 的長度";

  static String m11(extensions) => "此欄位需要有效的文件擴展名。";

  static String m12(fileSize, maxSize) => "此文件超過允許的最大大小。";

  static String m13(max) => "此欄位必須小於或等於 ${max}";

  static String m14(maxLength) => "此欄位的長度必須小於或等於 ${maxLength}";

  static String m15(maxWordsCount) => "值必須具有小於或等於 ${maxWordsCount} 的單詞計數";

  static String m16(min) => "此欄位必須大於或等於 ${min}";

  static String m17(minLength) => "此欄位的長度必須大於或等於 ${minLength}";

  static String m18(minWordsCount) => "值必須具有大於或等於 ${minWordsCount} 的單詞計數";

  static String m19(value) => "此欄位不得等於 ${value}";

  static String m20(min, max) => "此欄位需要有效的端口號。";

  static String m21(value) => "值必須以 ${value} 開頭。";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage("此欄位只能包含字母。"),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "此欄位需要有效的 Base64 字符串。",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的 BIC 編碼。"),
    "cityErrorText": MessageLookupByLibrary.simpleMessage("值必須是一個有效的城市名稱。"),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "值必須在允許的值列表中。",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage("值必須是一個有效的國家。"),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "此欄位需要有效的信用卡 CVC 碼。",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "此欄位需要有效的信用卡號碼。",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "此欄位需要有效的信用卡到期日期。",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "信用卡已過期。",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "日期必須在未來。",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "日期必須在過去。",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "此欄位需要有效的日期字符串。",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage("值必須是一個有效的DUNS號碼。"),
    "emailErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的電子郵件地址。"),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要偶數。"),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage("值必須是有效的檔案名稱。"),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage("值必須是一個有效的名字。"),
    "floatErrorText": MessageLookupByLibrary.simpleMessage("數值必須為有效的浮點數。"),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "數值必須為有效的十六進位數字。",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的 IBAN。"),
    "integerErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的整數。"),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "無效的 MIME 類型。",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的 IP。"),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的 ISBN 編碼。"),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的 JSON。"),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "值必須是一個有效的語言代碼。",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage("值必須是一個有效的姓氏。"),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的緯度。"),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "值必須是一個有效的車牌號碼。",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的經度。"),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要包含小寫字母。"),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "此欄位需要有效的 MAC 地址。",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage("此欄位與格式不匹配。"),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage("此欄位必須為假。"),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage("此欄位必須為真。"),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage("值必須是負數。"),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage("值不能為零。"),
    "numericErrorText": MessageLookupByLibrary.simpleMessage("此欄位必須是數字。"),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要奇數。"),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "值必須是一個有效的護照號碼。",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的路徑。"),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的電話號碼。"),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage("值必須是正數。"),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage("值必須是一個質數。"),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage("此欄位不能為空。"),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "此欄位必須只包含單行文本。",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage("值必須是有效的社會安全號碼。"),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage("值必須是一個有效的州/省。"),
    "streetErrorText": MessageLookupByLibrary.simpleMessage("值必須是一個有效的街道名稱。"),
    "timeErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的時間。"),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage("值必須是一個有效的時區。"),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要唯一的值。"),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要包含大寫字母。"),
    "urlErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的 URL 地址。"),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage("用戶名不能包含破折號。"),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "用戶名不能包含點。",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage("用戶名不能包含數字。"),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage("用戶名不能包含空格。"),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage("用戶名不能包含特殊字符。"),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage("用戶名不能包含底線。"),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage("值必須是有效的用戶名。"),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage("此欄位需要有效的 UUID。"),
    "vinErrorText": MessageLookupByLibrary.simpleMessage("值必須是一個有效的車輛識別號。"),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage("值必須是有效的郵政編碼。"),
  };
}
