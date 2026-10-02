// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(min, max) => "Value must be between ${min} and ${max}.";

  static String m1(colorCode) =>
      "Value should be a valid ${colorCode} color code.";

  static String m2(value) => "Value must contain ${value}.";

  static String m3(min) =>
      "Value must contain at least ${min} lowercase characters.";

  static String m4(min) => "Value must contain at least ${min} numbers.";

  static String m5(min) =>
      "Value must contain at least ${min} special characters.";

  static String m6(min) =>
      "Value must contain at least ${min} uppercase characters.";

  static String m7(min, max) => "Date must be in range ${min} - ${max}.";

  static String m8(value) => "Value must end with ${value}.";

  static String m9(value) => "This field value must be equal to ${value}.";

  static String m10(length) => "Value must have a length equal to ${length}.";

  static String m11(extensions) => "File extension must be ${extensions}.";

  static String m12(fileSize, maxSize) =>
      "File size must be less than ${maxSize} while it is ${fileSize}.";

  static String m13(max) => "Value must be less than or equal to ${max}.";

  static String m14(maxLength) =>
      "Value must have a length less than or equal to ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Value must have a words count less than or equal to ${maxWordsCount}.";

  static String m16(min) => "Value must be greater than or equal to ${min}.";

  static String m17(minLength) =>
      "Value must have a length greater than or equal to ${minLength}.";

  static String m18(minWordsCount) =>
      "Value must have a words count greater than or equal to ${minWordsCount}.";

  static String m19(value) => "This field value must not be equal to ${value}.";

  static String m20(min, max) =>
      "Value must be a valid port number between ${min} and ${max}.";

  static String m21(value) => "Value must start with ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be alphabetical.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid base64 string.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid BIC.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid city name.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be in list.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid country.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "This field requires a valid CVC code.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "This field requires a valid credit card number.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "This field requires a valid expiration date.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "This credit card has expired.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Date must be in the future.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Date must be in the past.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "This field requires a valid date string.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid DUNS number.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "This field requires a valid email address.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be an even number.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid file name.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid first name.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid floating point number.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid hexadecimal number.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "This field requires a valid integer.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Invalid mime type.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "This field requires a valid IP.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid ISBN.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be valid JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid language code.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid last name.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid latitude.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid license plate.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid longitude.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be lowercase.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid MAC address.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Value does not match pattern.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "This field must be false.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "This field must be true.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a negative number.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must not be zero.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be numeric.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be an odd number.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid passport number.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid path.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "This field requires a valid phone number.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a positive number.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a prime number.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "This field cannot be empty.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a single line.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid Social Security Number.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid state.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid street name.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid time.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid timezone.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be unique.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be uppercase.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "This field requires a valid URL address.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage("Username cannot contain dashes."),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Username cannot contain dots.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Username cannot contain numbers.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage("Username cannot contain spaces."),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Username cannot contain special characters.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Username cannot contain underscore.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid username.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Value must be a valid ZIP code.",
    ),
  };
}
