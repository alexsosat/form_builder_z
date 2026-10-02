// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ka locale. All the
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
  String get localeName => 'ka';

  static String m0(min, max) => "მნიშვნელობა უნდა იყოს შორის ${min} და ${max}.";

  static String m1(colorCode) => "ველი უნდა იყოს სწორი ფერის კოდი.";

  static String m2(value) => "მნიშვნელობა უნდა შეიცავდეს ${value}.";

  static String m3(min) => "ველი უნდა შეიცავდეს მცირე ასოებს.";

  static String m4(min) => "ველი უნდა შეიცავდეს რიცხვებს.";

  static String m5(min) => "ველი უნდა შეიცავდეს განსაკუთრებულ ხასიათს.";

  static String m6(min) => "ველი უნდა შეიცავდეს დიდ ასოებს.";

  static String m7(min, max) => "თარიღი უნდა იყოს ვალიდურ დიაპაზონში.";

  static String m8(value) => "მნიშვნელობა უნდა მთავრდებოდეს ${value}.";

  static String m9(value) => "ველის მნიშვნელობა უნდა იყოს ტოლი ${value}.";

  static String m10(length) =>
      "მნიშვნელობას უნდა ჰქონდეს სიგრძე, რომელიც ტოლი უნდა იყოს ${length}.";

  static String m11(extensions) => "ველი უნდა იყოს ფაილის სწორი გაფართოება.";

  static String m12(fileSize, maxSize) =>
      "ფაილი აღემატება მაქსიმალურ დაშვებულ ზომას.";

  static String m13(max) => "მნიშვნელობა უნდა იყოს ნაკლები ან ტოლი ${max}.";

  static String m14(maxLength) =>
      "მნიშვნელობის სიგრძე უნდა იყოს ნაკლები ან ტოლი ${maxLength}.";

  static String m15(maxWordsCount) =>
      "მნიშვნელობას უნდა ჰქონდეს სიტყვების რაოდენობა ნაკლები ან ტოლი ${maxWordsCount}.";

  static String m16(min) => "მნიშვნელობა უნდა იყოს მეტი ან ტოლი ${min}.";

  static String m17(minLength) =>
      "მნიშვნელობის სიგრძე უნდა იყოს მეტი ან ტოლი ${minLength}.";

  static String m18(minWordsCount) =>
      "მნიშვნელობას უნდა ჰქონდეს სიტყვების რაოდენობა მეტი ან ტოლი ${minWordsCount}.";

  static String m19(value) => "ველის მნიშვნელობა არ უნდა იყოს ტოლი ${value}.";

  static String m20(min, max) => "ველი უნდა იყოს სწორი პორტის ნომერი.";

  static String m21(value) => "მნიშვნელობა უნდა იწყებოდეს ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა შეიცავდეს მხოლოდ ასოებს.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს მოქმედი Base64 სტრიქონი.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს მოქმედი BIC კოდი.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს ქალაქის სწორი სახელი.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს ვალიდური მნიშვნელობების სიაში.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს ქვეყნის სწორი სახელი.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს მოქმედი საკრედიტო ბარათის CVC კოდი.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "ველის მნიშვნელობა უნდა იყოს საკრედიტო ბარათის ნომერი.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს საკრედიტო ბარათის ვადის გასვლის მოქმედი თარიღი.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "საკრედიტო ბარათს ვადა გაუვიდა.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "თარიღი მომავალში უნდა იყოს.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "თარიღი წარსულში უნდა იყოს.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს თარიღი.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს სწორი DUNS ნომერი.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს email მისამართი.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი ლუწი რიცხვი უნდა იყოს.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს ფაილის სწორი სახელი.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს სწორი სახელი.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს სწორი მცურავი წვეთოვანი რიცხვი.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს სწორი თექვსმეტობითი რიცხვი.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს სწორი IBAN ნომერი.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს მთელი რიცხვი.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "არასწორი MIME-ტიპი.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს IP მისამართი.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს სწორი ISBN ნომერი.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს მოქმედი JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს ვალიდური ენის კოდი.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს სწორი გვარი.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს სწორი განედი.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს მოქმედი სანომრე ნიშნის ნომერი.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს სწორი გრძედი.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა შეიცავდეს პატარა ასოებს.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს სწორი MAC მისამართი.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა შეესაბამებოდეს ნიმუშს.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს ყალბი.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს ჭეშმარიტი.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უარყოფითი რიცხვი უნდა იყოს.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა არ უნდა იყოს ნული.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს რიცხვი.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი კენტი რიცხვი უნდა იყოს.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს მოქმედი პასპორტის ნომერი.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს სწორი გზა.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს ტელეფონის ნომერი.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს დადებითი რიცხვი.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს მარტივი რიცხვი.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი არ შეიძლება იყოს ცარიელი.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა შეიცავდეს მხოლოდ ერთ ხაზს.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს მოქმედი სოციალური დაზღვევის ნომერი.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს მოქმედი შტატის სახელი.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს სწორი ქუჩის სახელი.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს სწორი დრო.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს სწორი დროის სარტყელი.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნიკალური უნდა იყოს.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა შეიცავდეს დიდი ასოებით დაწერილს.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს URL მისამართი.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "მომხმარებლის სახელი არ შეიძლება შეიცავდეს დეფისებს.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "მომხმარებლის სახელი არ შეიძლება შეიცავდეს წერტილებს.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "მომხმარებლის სახელი არ შეიძლება შეიცავდეს ციფრებს.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "მომხმარებლის სახელი არ შეიძლება შეიცავდეს სივრცეებს.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "მომხმარებლის სახელი არ შეიძლება შეიცავდეს სპეციალურ სიმბოლოებს.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "მომხმარებლის სახელი არ შეიძლება შეიცავდეს ქვედახაზებს.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს სწორი მომხმარებლის სახელი.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "ველი უნდა იყოს მოქმედი UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს მოქმედი VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "მნიშვნელობა უნდა იყოს მოქმედი საფოსტო ინდექსი.",
    ),
  };
}
