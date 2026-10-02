// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a mn locale. All the
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
  String get localeName => 'mn';

  static String m0(min, max) => "Утга нь ${min} ба ${max} хооронд байх ёстой.";

  static String m1(colorCode) => "Өнгөний код алдаатай байна.";

  static String m2(value) => "Утга нь ${value}-г агуулсан байх ёстой.";

  static String m3(min) => "Жижиг үсэг агуулсан байх ёстой.";

  static String m4(min) => "Тоон утга агуулсан байх ёстой.";

  static String m5(min) => "Тусгай тэмдэгт агуулсан байх ёстой.";

  static String m6(min) => "Том үсэг агуулсан байх ёстой.";

  static String m7(min, max) => "Огноо зөвшөөрөгдсөн хязгаарт байх ёстой.";

  static String m8(value) => "Утга нь ${value}-ээр төгсөх ёстой.";

  static String m9(value) => "${value}-тэй тэнцүү утга оруулна уу.";

  static String m10(length) => "${length}-тэй тэнцүү урттай утга оруулна уу.";

  static String m11(extensions) => "Файлын өргөтгөл алдаатай байна.";

  static String m12(fileSize, maxSize) => "Файлын хэмжээ хэтэрсэн байна.";

  static String m13(max) => "${max}-аас бага утга оруулна уу.";

  static String m14(maxLength) => "${maxLength}-аас богино утга оруулна уу.";

  static String m15(maxWordsCount) =>
      "Утга нь түүнээс бага буюу тэнцүү тоолох үгстэй байх ёстой ${maxWordsCount}.";

  static String m16(min) => "${min}-аас их утга оруулна уу.";

  static String m17(minLength) => "${minLength}-аас урт утга оруулна уу.";

  static String m18(minWordsCount) =>
      "Утга нь түүнээс их буюу тэнцүү тооны үгтэй байх ёстой ${minWordsCount}.";

  static String m19(value) => "${value}-тэй тэнцүү биш утга оруулна уу.";

  static String m20(min, max) => "Портын дугаар алдаатай байна.";

  static String m21(value) => "Утга нь ${value}-ээр эхлэх ёстой.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Зөвхөн үсэг агуулсан байх ёстой.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Base64 мөр алдаатай байна.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "BIC код алдаатай байна.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр хотын нэр байх ёстой.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь зөвшөөрөгдсөн утгуудын жагсаалтад байх ёстой.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр улс байх ёстой.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Кредит картын CVC код алдаатай байна.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Картын дугаар алдаатай байна.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Кредит картын хүчинтэй хугацааг оруулна уу.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Кредит картын хүчинтэй хугацаа дууссан байна.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Огноо нь ирэх өмнө байх ёстой.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Огноо нь өмнө байх ёстой.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Огнооны загварт таарахгүй байна.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр DUNS дугаар байх ёстой.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "И-мэйл хаяг алдаатай байна.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Тэгш тоо оруулна уу.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь баталгаажсан файлын нэр байх ёстой.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр анхны нэр байх ёстой.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь буцаж ирдэг зөв хөвөгч цэгийн тоо байх ёстой.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь буцаж ирдэг зөв арван зургаатын тоо байх ёстой.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "IBAN алдаатай байна.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Бүхэл тоон утга оруулна уу.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Буруу mime төрөл.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "IP хаяг алдаатай байна.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "ISBN код алдаатай байна.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "JSON алдаатай байна.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр хэлний код байх ёстой.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр овог байх ёстой.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Өргөрөг алдаатай байна.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр тээврийн хэрэгслийн дугаар байх ёстой.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Уртраг алдаатай байна.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Үсгийг жижгээр оруулна уу.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "MAC хаяг алдаатай байна.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга загварт таарахгүй байна.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Энэ талбар нь худал байх ёстой.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Энэ талбар нь үнэн байх ёстой.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь сөрөг тоо байх ёстой.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь нэг биш байх ёстой.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Тоон утга оруулна уу.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Сондгой тоо оруулна уу.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр паспортын дугаар байх ёстой.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Зам алдаатай байна.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Утасны дугаар алдаатай байна.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь эерэг тоо байх ёстой.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь анхны тоо байх ёстой.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Заавал бөглөнө үү.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Зөвхөн нэг мөрт байх ёстой.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь баталгаажсан нийгмийн дугаар байх ёстой.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр муж байх ёстой.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр гудамжны нэр байх ёстой.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Цаг алдаатай байна.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр цагийн бүс байх ёстой.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга давхардаж байна.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Үсгийг томоор оруулна уу.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "URL хаяг алдаатай байна.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Хэрэглэгчийн нэр зураас агуулж болохгүй.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Хэрэглэгчийн нэр цэг агуулж болохгүй.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Хэрэглэгчийн нэр тоо агуулж болохгүй.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Хэрэглэгчийн нэр хоосон зай агуулж болохгүй.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Хэрэглэгчийн нэр тусгай тэмдэгт агуулж болохгүй.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Хэрэглэгчийн нэр доогуур зураас агуулж болохгүй.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр хэрэглэгчийн нэр байх ёстой.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "UUID алдаатай байна.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь хүчин төгөлдөр VIN байх ёстой.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Утга нь баталгаажсан ZIP код байх ёстой.",
    ),
  };
}
