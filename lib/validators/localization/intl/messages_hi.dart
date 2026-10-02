// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hi locale. All the
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
  String get localeName => 'hi';

  static String m0(min, max) => "मान ${min} और ${max} के बीच होना चाहिए।";

  static String m1(colorCode) =>
      "मान को एक मान्य ${colorCode} रंग कोड होना चाहिए।";

  static String m2(value) => "मान में ${value} होना चाहिए।";

  static String m3(min) => "मान में कम से कम ${min} लोअरकेस वर्ण होने चाहिए।";

  static String m4(min) => "मान में कम से कम ${min} संख्याएँ होनी चाहिए।";

  static String m5(min) => "मान में कम से कम ${min} विशेष वर्ण होने चाहिए।";

  static String m6(min) => "मान में कम से कम ${min} अपरकेस वर्ण होने चाहिए।";

  static String m7(min, max) => "तिथि ${min} - ${max} सीमा में होनी चाहिए";

  static String m8(value) => "मान ${value} के साथ समाप्त होना चाहिए।";

  static String m9(value) => "इस फील्ड का मान ${value} के बराबर होना चाहिए।";

  static String m10(length) => "मान की लंबाई ${length} के बराबर होनी चाहिए";

  static String m11(extensions) => "फ़ाइल एक्सटेंशन ${extensions} होना चाहिए";

  static String m12(fileSize, maxSize) =>
      "फ़ाइल की आकार ${maxSize} से कम होनी चाहिए जबकि यह ${fileSize} है";

  static String m13(max) => "मान ${max} से कम या बराबर होना चाहिए";

  static String m14(maxLength) =>
      "मान की लंबाई ${maxLength} से कम या बराबर होनी चाहिए";

  static String m15(maxWordsCount) =>
      "मान की शब्दों की संख्या ${maxWordsCount} से कम या बराबर होनी चाहिए";

  static String m16(min) => "मान ${min} से अधिक या बराबर होना चाहिए";

  static String m17(minLength) =>
      "मान की लंबाई ${minLength} से अधिक या बराबर होनी चाहिए";

  static String m18(minWordsCount) =>
      "मान की शब्दों की संख्या ${minWordsCount} से अधिक या बराबर होनी चाहिए";

  static String m19(value) =>
      "इस फील्ड का मान ${value} के बराबर नहीं होना चाहिए।";

  static String m20(min, max) =>
      "मान को ${min} और ${max} के बीच एक वैध पोर्ट संख्या होनी चाहिए।";

  static String m21(value) => "मान ${value} के साथ शुरू होना चाहिए।";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वर्णमाला के क्रम में होना चाहिए।",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वैध बेस64 स्ट्रिंग होना चाहिए।",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वैध BIC होना चाहिए।",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य शहर का नाम होना चाहिए।",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "मान सूची में होना चाहिए।",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य देश होना चाहिए।",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "इस फ़ील्ड में एक मान्य सीवीसी कोड की आवश्यकता है।",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "इस फ़ील्ड में एक मान्य क्रेडिट कार्ड नंबर की आवश्यकता है।",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "इस फ़ील्ड में एक मान्य समाप्ति तिथि की आवश्यकता है।",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "यह क्रेडिट कार्ड समाप्त हो गया है।",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "तिथि भविष्य में होनी चाहिए।",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "तिथि भूत काल में होनी चाहिए।",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "इस फ़ील्ड में एक मान्य तिथि स्ट्रिंग की आवश्यकता है।",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य DUNS नंबर होना चाहिए।",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "इस फ़ील्ड में एक मान्य ईमेल पता की आवश्यकता है।",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को सम संख्या होनी चाहिए।",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को एक मान्य फ़ाइल नाम होना चाहिए।",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य प्रथम नाम होना चाहिए।",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्य फ़्लोटिंग पॉइंट नंबर होना चाहिए।",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्य हेक्साडेसिमल नंबर होना चाहिए।",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वैध IBAN होना चाहिए।",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "इस फ़ील्ड में एक मान्य पूर्णांक की आवश्यकता है।",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "अमान्य MIME प्रकार।",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "इस फ़ील्ड में एक मान्य आईपी की आवश्यकता है।",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वैध ISBN होना चाहिए।",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य JSON होना चाहिए।",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य भाषा कोड होना चाहिए।",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य उपनाम होना चाहिए।",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वैध अक्षांश होना चाहिए।",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य लाइसेंस प्लेट होना चाहिए।",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वैध देशान्तर होना चाहिए।",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "मान लोअरकेस होना चाहिए।",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वैध मैक पता होना चाहिए।",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "मान पैटर्न के साथ मेल नहीं खाता।",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "यह फ़ील्ड झूठ होना चाहिए।",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "यह फ़ील्ड सच होना चाहिए।",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को ऋणात्मक संख्या होनी चाहिए।",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान शून्य नहीं होनी चाहिए।",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "मान संख्यात्मक होना चाहिए।",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को विषम संख्या होनी चाहिए।",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य पासपोर्ट नंबर होना चाहिए।",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वैध पथ होना चाहिए।",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "इस फ़ील्ड में एक मान्य फ़ोन नंबर की आवश्यकता है।",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को सकारात्मक संख्या होनी चाहिए।",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान एक अभाज्य संख्या होनी चाहिए।",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "यह फ़ील्ड खाली नहीं हो सकता।",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "मान एक ही लाइन होनी चाहिए।",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वैध सोशल सिक्योरिटी नंबर होना चाहिए।",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य राज्य होना चाहिए।",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य सड़क का नाम होना चाहिए।",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वैध समय होना चाहिए।",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य समय क्षेत्र होना चाहिए।",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "मान अद्वितीय होनी चाहिए।",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "मान अपरकेस होना चाहिए।",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "इस फ़ील्ड में एक मान्य URL पता की आवश्यकता है।",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "उपयोगकर्ता नाम में डैश नहीं हो सकते।",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "उपयोगकर्ता नाम में बिंदु नहीं हो सकते।",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "उपयोगकर्ता नाम में संख्याएँ नहीं हो सकतीं।",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "उपयोगकर्ता नाम में रिक्त स्थान नहीं हो सकते।",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "उपयोगकर्ता नाम में विशेष वर्ण नहीं हो सकते।",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "उपयोगकर्ता नाम में अंडरस्कोर नहीं हो सकता।",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्य उपयोगकर्ता नाम होना चाहिए।",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को एक मान्य UUID होना चाहिए।",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य VIN होना चाहिए।",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "मान को वैध ज़िप कोड होना चाहिए।",
    ),
  };
}
