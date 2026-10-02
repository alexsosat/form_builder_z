// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static String m0(min, max) => "値は${min}から${max}の間である必要があります。";

  static String m1(colorCode) => "有効なカラーコードを入力してください。";

  static String m2(value) => "値は${value}を含む必要があります。";

  static String m3(min) => "このフィールドには小文字を含める必要があります。";

  static String m4(min) => "このフィールドには数字を含める必要があります。";

  static String m5(min) => "このフィールドには特殊文字を含める必要があります。";

  static String m6(min) => "このフィールドには大文字を含める必要があります。";

  static String m7(min, max) => "日付は許可された範囲内である必要があります。";

  static String m8(value) => "値は${value}で終わる必要があります。";

  static String m9(value) => "${value}に一致していません。";

  static String m10(length) => "値の長さは${length}と等しい必要があります。";

  static String m11(extensions) => "有効なファイル拡張子を入力してください。";

  static String m12(fileSize, maxSize) => "ファイルサイズが最大許容サイズを超えています。";

  static String m13(max) => "値は${max}以下にしてください。";

  static String m14(maxLength) => "値は${maxLength}文字以下で入力してください。";

  static String m15(maxWordsCount) => "値の単語数は${maxWordsCount}以下にしてください。";

  static String m16(min) => "値は${min}以上にしてください。";

  static String m17(minLength) => "値は${minLength}文字以上で入力してください。";

  static String m18(minWordsCount) => "値の単語数は${minWordsCount}以上にしてください。";

  static String m19(value) => "値は${value}と異なる必要があります。";

  static String m20(min, max) => "有効なポート番号を入力してください。";

  static String m21(value) => "値は${value}で始まる必要があります。";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "このフィールドはアルファベットのみを含める必要があります。",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "有効なBase64文字列を入力してください。",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage("有効なBICを入力してください。"),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効な市の名前でなければなりません。",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "値は許可された値のリストに含まれている必要があります。",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効な国でなければなりません。",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "有効なクレジットカードのCVCコードを入力してください。",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "有効なクレジットカード番号を入力してください。",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "有効なクレジットカードの有効期限を入力してください。",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "クレジットカードの有効期限が切れています。",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "日付は未来である必要があります。",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "日付は過去である必要があります。",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "正しい日付を入力してください。",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効なDUNS番号でなければなりません。",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "有効なメールアドレスを入力してください。",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "値は偶数でなければなりません。",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効なファイル名である必要があります。",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効な名でなければなりません。",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効な浮動小数点数でなければなりません。",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効な16進数でなければなりません。",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage("有効なIBANを入力してください。"),
    "integerErrorText": MessageLookupByLibrary.simpleMessage("整数で入力してください。"),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "無効な MIME タイプです。",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage("有効なIPアドレスを入力してください。"),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage("有効なISBNを入力してください。"),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage("有効なJSONを入力してください。"),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効な言語コードでなければなりません。",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効な姓でなければなりません。",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "有効な緯度を入力してください。",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効なナンバープレートでなければなりません。",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "有効な経度を入力してください。",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "値は小文字で入力してください。",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "有効なMACアドレスを入力してください。",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage("値が正規表現と一致しません。"),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "このフィールドはfalseでなければなりません。",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "このフィールドはtrueでなければなりません。",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "値は負の数である必要があります。",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "値はゼロであってはいけません。",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage("値は数字で入力してください。"),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "値は奇数でなければなりません。",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効なパスポート番号でなければなりません。",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage("有効なパスを入力してください。"),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage("有効な電話番号を入力してください。"),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "値は正の数である必要があります。",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "値は素数でなければなりません。",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage("このフィールドは必須です。"),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "値は単一行である必要があります。",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効な社会保障番号である必要があります。",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage("値は有効な州でなければなりません。"),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効な通り名でなければなりません。",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage("有効な時間を入力してください。"),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効なタイムゾーンでなければなりません。",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage("値は一意である必要があります。"),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "値は大文字で入力してください。",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage("有効なURLを入力してください。"),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage("ユーザー名にダッシュを含めることはできません。"),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "ユーザー名にドットを含めることはできません。",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage("ユーザー名に数字を含めることはできません。"),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage("ユーザー名にスペースを含めることはできません。"),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage("ユーザー名に特殊文字を含めることはできません。"),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage("ユーザー名にアンダースコアを含めることはできません。"),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効なユーザー名でなければなりません。",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage("有効なUUIDを入力してください。"),
    "vinErrorText": MessageLookupByLibrary.simpleMessage("値は有効なVINでなければなりません。"),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "値は有効な郵便番号である必要があります。",
    ),
  };
}
