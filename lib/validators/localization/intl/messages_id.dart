// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a id locale. All the
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
  String get localeName => 'id';

  static String m0(min, max) => "Nilai harus antara ${min} dan ${max}.";

  static String m1(colorCode) => "Kode warna tidak valid.";

  static String m2(value) => "Nilai harus mengandung ${value}.";

  static String m3(min) => "Bidang ini harus mengandung huruf kecil.";

  static String m4(min) => "Bidang ini harus mengandung angka.";

  static String m5(min) => "Bidang ini harus mengandung karakter khusus.";

  static String m6(min) => "Bidang ini harus mengandung huruf besar.";

  static String m7(min, max) =>
      "Tanggal harus berada dalam rentang yang diizinkan.";

  static String m8(value) => "Nilai harus diakhiri dengan ${value}.";

  static String m9(value) => "Nilai bidang ini harus sama dengan ${value}.";

  static String m10(length) =>
      "Nilai harus memiliki panjang yang sama dengan ${length}.";

  static String m11(extensions) => "Ekstensi file tidak valid.";

  static String m12(fileSize, maxSize) =>
      "Ukuran file melebihi batas maksimum yang diizinkan.";

  static String m13(max) => "Nilai harus kurang dari atau sama dengan ${max}.";

  static String m14(maxLength) =>
      "Panjang karakter harus kurang dari atau sama dengan ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Nilai harus memiliki jumlah kata kurang dari atau sama dengan ${maxWordsCount}.";

  static String m16(min) =>
      "Nilai harus lebih besar dari atau sama dengan ${min}.";

  static String m17(minLength) =>
      "Panjang karakter harus lebih besar dari atau sama dengan ${minLength}.";

  static String m18(minWordsCount) =>
      "Nilai harus memiliki kata yang diperhitungkan lebih besar dari atau sama dengan ${minWordsCount}.";

  static String m19(value) =>
      "Nilai bidang ini tidak boleh sama dengan ${value}.";

  static String m20(min, max) => "Nomor port tidak valid.";

  static String m21(value) => "Nilai harus dimulai dengan ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Bidang ini harus hanya mengandung huruf.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "String Base64 tidak valid.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage("BIC tidak valid."),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa nama kota yang valid.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus ada dalam daftar nilai yang diizinkan.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa negara yang valid.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Kode CVC kartu kredit tidak valid.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Nomor kartu kredit tidak valid.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Tanggal kedaluwarsa kartu kredit tidak valid.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Kartu kredit telah kedaluwarsa.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Tanggal harus di masa depan.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Tanggal harus di masa lalu.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Tanggal tidak valid.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa nomor DUNS yang valid.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Alamat email tidak valid.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Bidang ini memerlukan angka genap.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus merupakan nama file yang valid.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa nama depan yang valid.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa angka floating point yang valid.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa angka heksadesimal yang valid.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage("IBAN tidak valid."),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa bilangan bulat.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Tipe mime tidak valid.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Alamat IP tidak valid.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage("ISBN tidak valid."),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage("JSON tidak valid."),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa kode bahasa yang valid.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa nama belakang yang valid.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Garis lintang tidak valid.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa pelat nomor yang valid.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Garis bujur tidak valid.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Bidang ini memerlukan huruf kecil.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Alamat MAC tidak valid.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai tidak cocok dengan pola.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Bidang ini harus salah.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Bidang ini harus benar.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus merupakan angka negatif.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai tidak boleh nol.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa angka.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Bidang ini memerlukan angka ganjil.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa nomor paspor yang valid.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage("Path tidak valid."),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Nomor telepon tidak valid.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus merupakan angka positif.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa bilangan prima.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Bidang ini tidak boleh kosong.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus dalam satu baris.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus merupakan Nomor Asuransi Sosial yang valid.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa provinsi yang valid.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa nama jalan yang valid.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage("Waktu tidak valid."),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa zona waktu yang valid.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus unik.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Bidang ini memerlukan huruf besar.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage("URL tidak valid."),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nama pengguna tidak boleh mengandung tanda hubung.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Nama pengguna tidak boleh mengandung titik.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nama pengguna tidak boleh mengandung angka.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nama pengguna tidak boleh mengandung spasi.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nama pengguna tidak boleh mengandung karakter khusus.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Nama pengguna tidak boleh mengandung garis bawah.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa nama pengguna yang valid.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage("UUID tidak valid."),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus berupa VIN yang valid.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Nilai harus merupakan kode ZIP yang valid.",
    ),
  };
}
