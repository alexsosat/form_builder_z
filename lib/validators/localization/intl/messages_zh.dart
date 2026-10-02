// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static String m0(min, max) => "值必须在 ${min} 和 ${max} 之间。";

  static String m1(colorCode) => "该字段必须是有效的颜色代码。";

  static String m2(value) => "值必须包含 ${value}。";

  static String m3(min) => "该字段必须包含小写字母。";

  static String m4(min) => "该字段必须包含数字。";

  static String m5(min) => "该字段必须包含特殊字符。";

  static String m6(min) => "该字段必须包含大写字母。";

  static String m7(min, max) => "日期必须在允许的范围内。";

  static String m8(value) => "值必须以 ${value} 结尾。";

  static String m9(value) => "该字段必须等于 ${value}。";

  static String m10(length) => "该字段的长度必须等于 ${length}。";

  static String m11(extensions) => "该字段必须是有效的文件扩展名。";

  static String m12(fileSize, maxSize) => "该文件超出允许的最大大小。";

  static String m13(max) => "该字段必须小于等于 ${max}。";

  static String m14(maxLength) => "该字段的长度必须小于等于 ${maxLength}。";

  static String m15(maxWordsCount) => "值必须具有小于或等于 ${maxWordsCount} 的单词计数。";

  static String m16(min) => "该字段必须大于等于 ${min}。";

  static String m17(minLength) => "该字段的长度必须大于等于 ${minLength}。";

  static String m18(minWordsCount) => "值必须具有大于或等于 ${minWordsCount} 的单词计数。";

  static String m19(value) => "该字段不能等于 ${value}。";

  static String m20(min, max) => "该字段必须是有效的端口号。";

  static String m21(value) => "值必须以 ${value} 开头。";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage("该字段只能包含字母。"),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "该字段必须是有效的 Base64 字符串。",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的 BIC。"),
    "cityErrorText": MessageLookupByLibrary.simpleMessage("值必须是有效的城市名称。"),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "值必须在允许的值列表中。",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage("值必须是有效的国家。"),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "该字段必须是有效的信用卡 CVC 码。",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "该字段必须是有效的信用卡号。",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "该字段必须是有效的信用卡到期日期。",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "信用卡已过期。",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "日期必须是将来的日期。",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "日期必须是过去的日期。",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "该字段必须是有效的时间日期。",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage("值必须是有效的DUNS编号。"),
    "emailErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的电子邮件地址。"),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是偶数。"),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage("值必须是一个有效的文件名。"),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage("值必须是有效的名字。"),
    "floatErrorText": MessageLookupByLibrary.simpleMessage("值必须是有效的浮点数。"),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "值必须是有效的十六进制数。",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的 IBAN。"),
    "integerErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是整数。"),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "无效的 MIME 类型。",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的 IP。"),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的 ISBN。"),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的 JSON。"),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "值必须是有效的语言代码。",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage("值必须是有效的姓氏。"),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的纬度。"),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "值必须是有效的车牌号。",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的经度。"),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage("该字段必须包含小写字母。"),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "该字段必须是有效的 MAC 地址。",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage("该字段格式不正确。"),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage("该字段必须为假。"),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage("该字段必须为真。"),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "值必须是一个负数。",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage("值不能为零。"),
    "numericErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是数字。"),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是奇数。"),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "值必须是有效的护照号码。",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的路径。"),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的电话号码。"),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "值必须是一个正数。",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage("值必须是质数。"),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage("该字段不能为空。"),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是单行文本。"),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage("值必须是一个有效的社会保险号码。"),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage("值必须是有效的州。"),
    "streetErrorText": MessageLookupByLibrary.simpleMessage("值必须是有效的街道名称。"),
    "timeErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的时间。"),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage("值必须是有效的时区。"),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是唯一的。"),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage("该字段必须包含大写字母。"),
    "urlErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的 URL 地址。"),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage("用户名不能包含破折号。"),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "用户名不能包含点。",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage("用户名不能包含数字。"),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage("用户名不能包含空格。"),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage("用户名不能包含特殊字符。"),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage("用户名不能包含下划线。"),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage("值必须是有效的用户名。"),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage("该字段必须是有效的 UUID。"),
    "vinErrorText": MessageLookupByLibrary.simpleMessage("值必须是有效的车辆识别码（VIN）。"),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage("值必须是一个有效的邮政编码。"),
  };
}
