// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ne locale. All the
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
  String get localeName => 'ne';

  static String m0(min, max) => "मान ${min} र ${max} को बीचमा हुनुपर्छ।";

  static String m1(colorCode) => "यो क्षेत्रलाई मान्य रङ्ग कोड चाहिन्छ।";

  static String m2(value) => "मानले ${value} समावेश गर्नुपर्छ।";

  static String m3(min) => "यो क्षेत्रमा साना अक्षर हुनुपर्छ।";

  static String m4(min) => "यो क्षेत्रमा संख्या हुनुपर्छ।";

  static String m5(min) => "यो क्षेत्रमा विशेष वर्ण हुनुपर्छ।";

  static String m6(min) => "यो क्षेत्रमा ठूला अक्षर हुनुपर्छ।";

  static String m7(min, max) => "मिति अनुमत दायरामा हुनुपर्छ।";

  static String m8(value) => "मान ${value} मा समाप्त हुनुपर्छ।";

  static String m9(value) => "यो क्षेत्रको मान ${value} बराबर हुनुपर्छ।";

  static String m10(length) => "मानको लम्बाइ ${length} बराबर हुनुपर्छ।";

  static String m11(extensions) => "यो क्षेत्रलाई मान्य फाइल विस्तार चाहिन्छ।";

  static String m12(fileSize, maxSize) =>
      "यो फाइलले अनुमत अधिकतम आकार नाघेको छ।";

  static String m13(max) => "मान ${max} भन्दा कम वा बराबर हुनुपर्छ।";

  static String m14(maxLength) =>
      "मानको लम्बाइ ${maxLength} भन्दा कम वा बराबर हुनुपर्छ।";

  static String m15(maxWordsCount) =>
      "मानसँग शब्दहरूको संख्या ${maxWordsCount} भन्दा कम वा बराबर हुनुपर्छ।";

  static String m16(min) => "मान ${min} भन्दा बढी वा बराबर हुनुपर्छ।";

  static String m17(minLength) =>
      "मानको लम्बाइ ${minLength} भन्दा बढी वा बराबर हुनुपर्छ।";

  static String m18(minWordsCount) =>
      "मानसँग शब्दहरूको संख्या ${minWordsCount} भन्दा बढी वा बराबर हुनुपर्छ।";

  static String m19(value) => "यो क्षेत्रको मान ${value} बराबर हुनु हुँदैन।";

  static String m20(min, max) => "यो क्षेत्रलाई मान्य पोर्ट नम्बर चाहिन्छ।";

  static String m21(value) => "मान ${value} बाट सुरु हुनुपर्छ।";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रमा मात्र अक्षरहरू हुनुपर्छ।",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य Base64 स्ट्रिंग चाहिन्छ।",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य BIC कोड चाहिन्छ।",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य शहरको नाम हुनुपर्छ।",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "मान अनुमत मानहरूको सूचीमा हुनुपर्छ।",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य देश हुनुपर्छ।",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य क्रेडिट कार्ड CVC कोड चाहिन्छ।",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य क्रेडिट कार्ड नम्बर चाहिन्छ।",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य क्रेडिट कार्ड समाप्ति मिति चाहिन्छ।",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "क्रेडिट कार्डको म्याद सकिएको छ।",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "मिति भविष्यमा हुनुपर्छ।",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "मिति अतितमा हुनुपर्छ।",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य मिति स्ट्रिंग चाहिन्छ।",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य DUNS नम्बर हुनुपर्छ।",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य इमेल ठेगाना चाहिन्छ।",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई सम संख्या चाहिन्छ।",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्य फाइल नाम हुनुपर्छ।",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य पहिलो नाम हुनुपर्छ।",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्यता प्राप्त फ्लोटिङ पोइन्ट नम्बर हुनुपर्छ।",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्यता प्राप्त हेक्साडेसिमल नम्बर हुनुपर्छ।",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य IBAN चाहिन्छ।",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य पूर्णांक चाहिन्छ।",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "अवैध माइम प्रकार।",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य आईपी ठेगाना चाहिन्छ।",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य ISBN चाहिन्छ।",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य JSON चाहिन्छ।",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य भाषाको कोड हुनुपर्छ।",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य थर हुनुपर्छ।",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य अक्षांश चाहिन्छ।",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य नम्बर प्लेट हुनुपर्छ।",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य देशान्तर चाहिन्छ।",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई साना अक्षर चाहिन्छ।",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य MAC ठेगाना चाहिन्छ।",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "मान ढाँचासँग मेल खाँदैन।",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्र असत्य हुनुपर्छ।",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्र सत्य हुनुपर्छ।",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्य नकारात्मक संख्या हुनुपर्छ।",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्य शून्य हुनुपर्छ।",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "मान संख्यात्मक हुनुपर्छ।",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई बिषम संख्या चाहिन्छ।",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य पासपोर्ट नम्बर हुनुपर्छ।",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य पथ चाहिन्छ।",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य फोन नम्बर चाहिन्छ।",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्य सकारात्मक संख्या हुनुपर्छ।",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "मान अभाज्य संख्या हुनुपर्छ।",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्र खाली हुन सक्दैन।",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य एकल लाइन स्ट्रिंग चाहिन्छ।",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्य सामाजिक सुरक्षा संख्या हुनुपर्छ।",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य राज्य हुनुपर्छ।",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य सडकको नाम हुनुपर्छ।",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य समय चाहिन्छ।",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य समयक्षेत्र हुनुपर्छ।",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य एकमात्र डाटा चाहिन्छ।",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई ठूला अक्षर चाहिन्छ।",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "यो फिल्डलाई मान्य URL ठेगाना चाहिन्छ।",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "प्रयोगकर्ता नाममा ड्यासहरू समावेश गर्नु हुँदैन।",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "प्रयोगकर्ता नाममा डटहरू समावेश गर्नु हुँदैन।",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "प्रयोगकर्ता नाममा संख्या समावेश गर्नु हुँदैन।",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "प्रयोगकर्ता नाममा खाली ठाउँहरू समावेश गर्नु हुँदैन।",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "प्रयोगकर्ता नाममा विशेष वर्णहरू समावेश गर्नु हुँदैन।",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "प्रयोगकर्ता नाममा अन्डरस्कोर समावेश गर्नु हुँदैन।",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्य प्रयोगकर्ता नाम हुनु पर्छ।",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "यो क्षेत्रलाई मान्य UUID चाहिन्छ।",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "मान मान्य VIN हुनुपर्छ।",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "मान्य ZIP कोड हुनुपर्छ।",
    ),
  };
}
