// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tr locale. All the
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
  String get localeName => 'tr';

  static String m0(min, max) => "Değer ${min} ile ${max} arasında olmalıdır.";

  static String m1(colorCode) => "Bu alan geçerli bir renk kodu gerektirir.";

  static String m2(value) => "Değer ${value} içermelidir.";

  static String m3(min) => "Bu alan küçük harf içermelidir.";

  static String m4(min) => "Bu alan bir rakam içermelidir.";

  static String m5(min) => "Bu alan özel karakter içermelidir.";

  static String m6(min) => "Bu alan büyük harf içermelidir.";

  static String m7(min, max) => "Tarih izin verilen aralıkta olmalıdır.";

  static String m8(value) => "Değer ${value} ile bitmelidir.";

  static String m9(value) =>
      "Bu alanın değeri, ${value} değerine eşit olmalıdır.";

  static String m10(length) =>
      "Değerin uzunluğu ${length} değerine eşit olmalıdır.";

  static String m11(extensions) =>
      "Bu alan geçerli bir dosya uzantısı gerektirir.";

  static String m12(fileSize, maxSize) =>
      "Bu dosya, izin verilen maksimum boyutu aşıyor.";

  static String m13(max) =>
      "Değer ${max} değerinden küçük veya eşit olmalıdır.";

  static String m14(maxLength) =>
      "Değerin uzunluğu ${maxLength} değerinden küçük veya eşit olmalıdır.";

  static String m15(maxWordsCount) =>
      "Değer, ${maxWordsCount} \'dan daha az veya eşit bir kelimeye sahip olmalıdır.";

  static String m16(min) =>
      "Değer ${min} değerinden büyük veya eşit olmalıdır.";

  static String m17(minLength) =>
      "Değerin uzunluğu ${minLength} değerinden büyük veya eşit olmalıdır.";

  static String m18(minWordsCount) =>
      "Değer, ${minWordsCount} \'dan daha büyük veya eşit bir kelimeye sahip olmalıdır.";

  static String m19(value) =>
      "Bu alanın değeri, ${value} değerine eşit olmamalıdır.";

  static String m20(min, max) =>
      "Bu alan geçerli bir port numarası gerektirir.";

  static String m21(value) => "Değer ${value} ile başlamalıdır.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan sadece harf içermelidir.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir Base64 dizesi gerektirir.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir BIC gerektirir.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir şehir adı olmalıdır.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer izin verilen değerler listesinde olmalıdır.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir ülke olmalıdır.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir kredi kartı CVC kodu gerektirir.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir kredi kartı numarası gerektirir.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir kredi kartı son kullanma tarihi gerektirir.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Kredi kartının son kullanma tarihi geçmiş.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Tarih gelecekte olmalı.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Tarih geçmişte olmalı.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir tarih gerektirir.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir DUNS numarası olmalıdır.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir e-posta adresi gerektirir.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan çift sayı gerektirir.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir dosya adı olmalıdır.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir ad olmalıdır.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir noktalı sayı olmalıdır.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir onaltılık sayı olmalıdır.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir IBAN gerektirir.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir tamsayı gerektirir.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Geçersiz mime türü.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir IP adresi gerektirir.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir ISBN gerektirir.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir JSON gerektirir.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir dil kodu olmalıdır.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir soyadı olmalıdır.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir enlem gerektirir.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir plaka olmalıdır.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir boylam gerektirir.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan küçük harfler içermelidir.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir MAC adresi gerektirir.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Lütfen geçerli bir değer giriniz.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan yanlış olmalıdır.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan doğru olmalıdır.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer negatif bir sayı olmalıdır.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer sıfır olmamalıdır.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer sayısal olmalıdır.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan tek sayı gerektirir.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir pasaport numarası olmalıdır.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir yol gerektirir.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir telefon numarası gerektirir.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer pozitif bir sayı olmalıdır.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer bir asal sayı olmalıdır.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan boş olamaz.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan tek satır olmalıdır.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir Sosyal Güvenlik Numarası olmalıdır.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir eyalet olmalıdır.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir sokak adı olmalıdır.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir saat gerektirir.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir saat dilimi olmalıdır.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alanın değeri benzersiz olmalıdır.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan büyük harfler içermelidir.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir URL adresi gerektirir.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage("Kullanıcı adı tire içeremez."),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Kullanıcı adı nokta içeremez.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage("Kullanıcı adı sayı içeremez."),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage("Kullanıcı adı boşluk içeremez."),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Kullanıcı adı özel karakter içeremez.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Kullanıcı adı alt çizgi içeremez.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir kullanıcı adı olmalıdır.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Bu alan geçerli bir UUID gerektirir.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir VIN numarası olmalıdır.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Değer geçerli bir Posta Kodu olmalıdır.",
    ),
  };
}
