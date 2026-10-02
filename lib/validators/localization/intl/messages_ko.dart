// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
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
  String get localeName => 'ko';

  static String m0(min, max) => "값은 ${min}와 ${max} 사이여야 합니다.";

  static String m1(colorCode) => "유효한 색상 코드를 입력해 주세요.";

  static String m2(value) => "값은 ${value}를 포함해야 합니다.";

  static String m3(min) => "이 필드는 소문자를 포함해야 합니다.";

  static String m4(min) => "이 필드는 숫자를 포함해야 합니다.";

  static String m5(min) => "이 필드는 특수 문자를 포함해야 합니다.";

  static String m6(min) => "이 필드는 대문자를 포함해야 합니다.";

  static String m7(min, max) => "날짜는 허용된 범위 내에 있어야 합니다.";

  static String m8(value) => "값은 ${value}로 끝나야 합니다.";

  static String m9(value) => "이 필드의 값은 반드시 ${value}와 같아야 합니다.";

  static String m10(length) => "값은 ${length}와 같은 길이를 가져야 합니다.";

  static String m11(extensions) => "유효한 파일 확장자를 입력해 주세요.";

  static String m12(fileSize, maxSize) => "파일 크기가 최대 허용 크기를 초과했습니다.";

  static String m13(max) => "이 필드의 값은 반드시 ${max} 이하이어야 합니다.";

  static String m14(maxLength) => "이 필드는 반드시 ${maxLength}자 이하이어야 합니다.";

  static String m15(maxWordsCount) =>
      "값은 ${maxWordsCount}보다 작거나 같은 단어를 가져야 합니다.";

  static String m16(min) => "이 필드의 값은 반드시 ${min} 이상이어야 합니다.";

  static String m17(minLength) => "이 필드는 반드시 ${minLength}자 이상이어야 합니다.";

  static String m18(minWordsCount) => "값은 ${minWordsCount}보다 큰 단어 수를 가져야 합니다.";

  static String m19(value) => "이 필드의 값은 반드시 ${value}와 달라야 합니다.";

  static String m20(min, max) => "유효한 포트 번호를 입력해 주세요.";

  static String m21(value) => "값은 ${value}로 시작해야 합니다.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "이 필드는 문자만 포함해야 합니다.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "유효한 Base64 문자열을 입력해 주세요.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage("유효한 BIC를 입력해 주세요."),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 도시 이름이어야 합니다.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 허용된 값 목록에 있어야 합니다.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 국가이어야 합니다.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "유효한 신용카드 CVC 코드를 입력해 주세요.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "유효한 카드 번호를 입력해 주세요.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "유효한 신용카드 만료일을 입력해 주세요.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "신용카드의 유효기간이 만료되었습니다.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "날짜는 미래여야 합니다.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "날짜는 과거여야 합니다.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "날짜 형식이 올바르지 않습니다.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 DUNS 번호이어야 합니다.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "이메일 주소 형식이 올바르지 않습니다.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "이 필드는 짝수여야 합니다.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 파일 이름이어야 합니다.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 이름이어야 합니다.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 부동 소수점 수여야 합니다.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 16진수여야 합니다.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage("유효한 IBAN을 입력해 주세요."),
    "integerErrorText": MessageLookupByLibrary.simpleMessage("정수만 입력 가능합니다."),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "잘못된 MIME 유형입니다.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage("유효한 IP를 입력해 주세요."),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage("유효한 ISBN을 입력해 주세요."),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage("유효한 JSON을 입력해 주세요."),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 언어 코드이어야 합니다.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 성이어야 합니다.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "유효한 위도를 입력해 주세요.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 번호판이어야 합니다.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "유효한 경도를 입력해 주세요.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "이 필드는 소문자를 포함해야 합니다.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "유효한 MAC 주소를 입력해 주세요.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "필드의 값이 패턴과 맞지 않습니다.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "이 필드는 false여야 합니다.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "이 필드는 true여야 합니다.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 음수여야 합니다.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 0이 아니어야 합니다.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage("숫자만 입력 가능합니다."),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "이 필드는 홀수여야 합니다.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 여권 번호이어야 합니다.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage("유효한 경로를 입력해 주세요."),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "유효한 전화번호를 입력해 주세요.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 양수여야 합니다.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 소수이어야 합니다.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "이 필드는 반드시 입력해야 합니다.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "한 줄로 입력해 주세요.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 주민등록번호여야 합니다.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage("값은 유효한 주이어야 합니다."),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 거리 이름이어야 합니다.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage("유효한 시간을 입력해 주세요."),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 시간대이어야 합니다.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage("고유해야 합니다."),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "이 필드는 대문자를 포함해야 합니다.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage("URL 형식이 올바르지 않습니다."),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage("사용자 이름에는 대시가 포함될 수 없습니다."),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "사용자 이름에는 점이 포함될 수 없습니다.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage("사용자 이름에는 숫자가 포함될 수 없습니다."),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage("사용자 이름에는 공백이 포함될 수 없습니다."),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage("사용자 이름에는 특수 문자가 포함될 수 없습니다."),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage("사용자 이름에는 밑줄이 포함될 수 없습니다."),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "값이 유효한 사용자 이름이어야 합니다.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage("유효한 UUID를 입력해 주세요."),
    "vinErrorText": MessageLookupByLibrary.simpleMessage("값은 유효한 VIN이어야 합니다."),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "값은 유효한 우편번호여야 합니다.",
    ),
  };
}
