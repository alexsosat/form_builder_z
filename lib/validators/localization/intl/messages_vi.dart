// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
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
  String get localeName => 'vi';

  static String m0(min, max) =>
      "Giá trị phải nằm trong khoảng từ ${min} đến ${max}.";

  static String m1(colorCode) => "Yêu cầu nhập mã màu hợp lệ.";

  static String m2(value) => "Giá trị phải chứa ${value}.";

  static String m3(min) => "Yêu cầu chứa chữ thường.";

  static String m4(min) => "Yêu cầu chứa số.";

  static String m5(min) => "Yêu cầu chứa ký tự đặc biệt.";

  static String m6(min) => "Yêu cầu chứa chữ hoa.";

  static String m7(min, max) => "Ngày phải nằm trong khoảng cho phép.";

  static String m8(value) => "Giá trị phải kết thúc bằng ${value}.";

  static String m9(value) => "Bắt buộc bằng ${value}.";

  static String m10(length) => "Độ dài phải bằng ${length}.";

  static String m11(extensions) => "Yêu cầu nhập đúng đuôi file.";

  static String m12(fileSize, maxSize) =>
      "File vượt quá kích thước tối đa cho phép.";

  static String m13(max) => "Giá trị phải nhỏ hơn hoặc bằng ${max}.";

  static String m14(maxLength) => "Độ dài phải nhỏ hơn hoặc bằng ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Giá trị phải có số từ nhỏ hơn hoặc bằng ${maxWordsCount}.";

  static String m16(min) => "Giá trị phải lớn hơn hoặc bằng ${min}.";

  static String m17(minLength) => "Độ dài phải lớn hơn hoặc bằng ${minLength}.";

  static String m18(minWordsCount) =>
      "Giá trị phải có số từ lớn hơn hoặc bằng ${minWordsCount}.";

  static String m19(value) => "Bắt buộc khác ${value}.";

  static String m20(min, max) => "Yêu cầu nhập đúng số cổng.";

  static String m21(value) => "Giá trị phải bắt đầu bằng ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu chỉ chứa chữ cái.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng chuỗi Base64.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng mã BIC.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là tên thành phố hợp lệ.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải nằm trong danh sách các giá trị hợp lệ.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là quốc gia hợp lệ.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng mã CVC của thẻ tín dụng.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng số thẻ tín dụng.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng ngày hết hạn của thẻ tín dụng.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Thẻ tín dụng đã hết hạn.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Ngày phải ở trong tương lai.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Ngày phải ở trong quá khứ.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng định dạng ngày.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là số DUNS hợp lệ.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage("Nhập đúng email."),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập số chẵn.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là tên tệp hợp lệ.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là tên hợp lệ.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là một số dấu phẩy động hợp lệ.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là một số thập lục phân hợp lệ.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng số IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập một số nguyên.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Loại mime không hợp lệ.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng địa chỉ IP.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng số ISBN.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng định dạng JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là mã ngôn ngữ hợp lệ.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là họ hợp lệ.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng vĩ độ.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là biển số xe hợp lệ.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng kinh độ.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập chữ thường.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng địa chỉ MAC.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị không khớp.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu phải sai.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu phải đúng.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là số âm.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị không được là số không.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập một số.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập số lẻ.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là số hộ chiếu hợp lệ.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng đường dẫn.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập số điện thoại hợp lệ.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là số dương.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là số nguyên tố.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Không được bỏ trống.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập trên một dòng.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là số An Sinh Xã Hội hợp lệ.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là bang hợp lệ.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là tên đường hợp lệ.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng định dạng thời gian.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là một múi giờ hợp lệ.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu giá trị duy nhất.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập chữ hoa.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Nhập đúng địa chỉ URL.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Tên người dùng không được chứa dấu gạch ngang.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Tên người dùng không được chứa dấu chấm.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Tên người dùng không được chứa số.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Tên người dùng không được chứa khoảng trắng.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Tên người dùng không được chứa ký tự đặc biệt.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Tên người dùng không được chứa dấu gạch dưới.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là tên người dùng hợp lệ.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Yêu cầu nhập đúng UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là số VIN hợp lệ.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Giá trị phải là mã ZIP hợp lệ.",
    ),
  };
}
