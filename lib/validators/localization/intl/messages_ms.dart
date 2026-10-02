// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ms locale. All the
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
  String get localeName => 'ms';

  static String m0(min, max) => "Nilai mesti antara ${min} dan ${max}.";

  static String m1(colorCode) => "Ruangan ini memerlukan kod warna yang sah.";

  static String m2(value) => "Nilai mesti mengandungi ${value}.";

  static String m3(min) => "Ruangan ini mesti mengandungi huruf kecil.";

  static String m4(min) => "Ruangan ini mesti mengandungi nombor.";

  static String m5(min) => "Ruangan ini mesti mengandungi aksara khas.";

  static String m6(min) => "Ruangan ini mesti mengandungi huruf besar.";

  static String m7(min, max) => "Tarikh mesti dalam julat yang dibenarkan.";

  static String m8(value) => "Nilai mesti berakhir dengan ${value}.";

  static String m9(value) => "Nilai ruangan ini wajib sama dengan ${value}.";

  static String m10(length) =>
      "Nilai mesti mempunyai panjang yang sama dengan ${length}.";

  static String m11(extensions) =>
      "Ruangan ini memerlukan sambungan fail yang sah.";

  static String m12(fileSize, maxSize) =>
      "Fail ini melebihi saiz maksimum yang dibenarkan.";

  static String m13(max) =>
      "Nilai wajib kurang daripada atau sama dengan ${max}.";

  static String m14(maxLength) =>
      "Nilai mesti mempunyai panjang kurang daripada atau sama dengan ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Nilai mesti mempunyai kata-kata yang kurang daripada atau sama dengan ${maxWordsCount}.";

  static String m16(min) =>
      "Nilai wajib lebih besar daripada atau sama dengan ${min}.";

  static String m17(minLength) =>
      "Nilai mesti mempunyai panjang lebih besar daripada atau sama dengan ${minLength}.";

  static String m18(minWordsCount) =>
      "Nilai mesti mempunyai kata-kata yang lebih besar daripada atau sama dengan ${minWordsCount}.";

  static String m19(value) =>
      "Nilai ruangan ini wajib tidak sama dengan ${value}.";

  static String m20(min, max) => "Ruangan ini memerlukan nombor port yang sah.";

  static String m21(value) => "Nilai mesti bermula dengan ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini mesti mengandungi huruf sahaja.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan rentetan Base64 yang sah.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan BIC yang sah.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti nama bandar yang sah.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti berada dalam senarai nilai yang dibenarkan.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti negara yang sah.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan kod CVC kad kredit yang sah.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan nombor kad kredit yang sah.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan tarikh luput kad kredit yang sah.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Kad kredit telah tamat tempoh.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Tarikh harus dalam masa depan.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Tarikh harus dalam masa lampau.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan rentetan tarikh yang sah.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti nombor DUNS yang sah.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan alamat e-mel yang sah.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan nombor genap.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus menjadi nama fail yang sah.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti nama pertama yang sah.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti nombor terapung sah.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti nombor heksadesimal sah.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan IBAN yang sah.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan integer yang sah.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Jenis MIME tidak sah.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan IP yang sah.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan ISBN yang sah.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan JSON yang sah.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti kod bahasa yang sah.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti nama keluarga yang sah.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan latitud yang sah.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti nombor plat lesen yang sah.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan longitud yang sah.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan huruf kecil.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan alamat MAC yang sah.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai tidak sepadan dengan corak.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini mesti palsu.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini mesti benar.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus menjadi nombor negatif.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai tidak boleh menjadi sifar.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai wajib dalam bentuk angka.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan nombor ganjil.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti nombor pasport yang sah.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan laluan yang sah.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan nombor telefon yang sah.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus menjadi nombor positif.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti nombor perdana.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini wajib diisi.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan rentetan tunggal.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus menjadi Nombor Keselamatan Sosial yang sah.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti negeri yang sah.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti nama jalan yang sah.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan masa yang sah.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti zon waktu yang sah.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan nilai yang unik.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan huruf besar.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan alamat URL yang sah.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nama pengguna tidak boleh mengandungi sengkang.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Nama pengguna tidak boleh mengandungi titik.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nama pengguna tidak boleh mengandungi nombor.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nama pengguna tidak boleh mengandungi ruang.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nama pengguna tidak boleh mengandungi aksara khas.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nama pengguna tidak boleh mengandungi garis bawah.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti username yang sah.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Ruangan ini memerlukan UUID yang sah.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai mesti nombor VIN yang sah.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus menjadi kod ZIP yang sah.",
    ),
  };
}
