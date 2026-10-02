// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ta locale. All the
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
  String get localeName => 'ta';

  static String m0(min, max) =>
      "மதிப்பு ${min} மற்றும் ${max} இடையில் இருக்க வேண்டும்.";

  static String m1(colorCode) =>
      "இந்த உள்ளீட்டுக்கு சரியான நிறக் குறியீடு தேவை.";

  static String m2(value) => "மதிப்பு ${value} ஐ கொண்டிருக்க வேண்டும்.";

  static String m3(min) =>
      "இந்த உள்ளீடு சிறிய எழுத்துக்களை கொண்டிருக்க வேண்டும்.";

  static String m4(min) => "இந்த உள்ளீடு எண்களை கொண்டிருக்க வேண்டும்.";

  static String m5(min) =>
      "இந்த உள்ளீடு சிறப்பு எழுத்துக்களை கொண்டிருக்க வேண்டும்.";

  static String m6(min) =>
      "இந்த உள்ளீடு பெரிய எழுத்துக்களை கொண்டிருக்க வேண்டும்.";

  static String m7(min, max) =>
      "தேதி அனுமதிக்கப்பட்ட வரம்பில் இருக்க வேண்டும்.";

  static String m8(value) => "மதிப்பு ${value}ல் முடிவடைய வேண்டும்.";

  static String m9(value) =>
      "இந்த உள்ளீடு மதிப்பு ${value}க்கு சமமாக இருக்க வேண்டும்.";

  static String m10(length) =>
      "மதிப்பு ${length}க்கு சமமான நீளத்தைக் கொண்டிருக்க வேண்டும்.";

  static String m11(extensions) =>
      "இந்த உள்ளீட்டுக்கு சரியான கோப்பு நீட்டிப்பு தேவை.";

  static String m12(fileSize, maxSize) =>
      "இந்த கோப்பு அதிகபட்ச அனுமதிக்கப்பட்ட அளவை மீறுகிறது.";

  static String m13(max) =>
      "மதிப்பு ${max} ஐ விட குறைவாகவோ அல்லது சமமாகவோ இருக்க வேண்டும்.";

  static String m14(maxLength) =>
      "மதிப்பின் நீளம் ${maxLength} ஐ விட குறைவாகவோ அல்லது சமமாகவோ இருக்க வேண்டும்.";

  static String m15(maxWordsCount) =>
      "மதிப்பை விட குறைவாகவோ அல்லது சமமாகவோ மதிப்பிடப்பட வேண்டும் ${maxWordsCount}.";

  static String m16(min) =>
      "மதிப்பு ${min} ஐ விட அதிகமாகவோ அல்லது சமமாகவோ இருக்க வேண்டும்.";

  static String m17(minLength) =>
      "மதிப்பு ${minLength} ஐ விட அதிகமாக அல்லது அதற்கு சமமான நீளத்தைக் கொண்டிருக்க வேண்டும்.";

  static String m18(minWordsCount) =>
      "மதிப்பை விட அதிகமாகவோ அல்லது சமமாகவோ மதிப்பிடப்பட வேண்டும் ${minWordsCount}.";

  static String m19(value) =>
      "இந்த உள்ளீடு மதிப்பு ${value}க்கு சமமாக இருக்கக்கூடாது.";

  static String m20(min, max) => "இந்த உள்ளீட்டுக்கு சரியான போர்ட் எண் தேவை.";

  static String m21(value) => "மதிப்பு ${value} மூலம் தொடங்க வேண்டும்.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீடு எழுத்துக்களை மட்டுமே கொண்டிருக்க வேண்டும்.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான Base64 வரிசை தேவை.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான BIC குறியீடு தேவை.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான நகரத்தின் பெயராக இருக்க வேண்டும்.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு அனுமதிக்கப்பட்ட மதிப்புகளின் பட்டியலில் இருக்க வேண்டும்.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான நாட்டாக இருக்க வேண்டும்.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான கிரெடிட் கார்டு CVC குறியீடு தேவை.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான கிரெடிட் கார்டு எண் தேவை.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான கிரெடிட் கார்டு காலாவதி தேதியை தேவை.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "கிரெடிட் கார்டு காலாவதி செய்யப்பட்டுள்ளது.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "தேதி எதிர்காலத்தில் இருக்க வேண்டும்.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "தேதி கடந்த காலத்தில் இருக்க வேண்டும்.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான தேதி தேவை.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான DUNS எணாக இருக்க வேண்டும்.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான மின்னஞ்சல் முகவரி தேவை.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சீரான எண் தேவை.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பை சரியான கோப்பு பெயராக இருக்க வேண்டும்.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான முதல் பெயராக இருக்க வேண்டும்.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு சரியான மிதக்கும் புள்ளி எண் ஆக இருக்க வேண்டும்.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு சரியான ஹெக்சாடெசிமல் எண் ஆக இருக்க வேண்டும்.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான ஐபான் தேவை.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான முழு எண் தேவை.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "செல்லுபடியாகாத மைம் வகை.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான ஐபி தேவை.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான ISBN எண் தேவை.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான JSON தேவை.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான மொழி குறியீடாக இருக்க வேண்டும்.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான இறுதி பெயராக இருக்க வேண்டும்.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான அகலாங்கு தேவை.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான பதிவு தகடு (license plate) எணாக இருக்க வேண்டும்.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான நீளாங்கு தேவை.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீடு சிறிய எழுத்துகளை கொண்டிருக்க வேண்டும்.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான MAC முகவரி தேவை.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு முறையுடன் பொருந்தவில்லை.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீடு பொய்யாக இருக்க வேண்டும்.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீடு உண்மையானதாக இருக்க வேண்டும்.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு எதிர்காலமாக இருக்க வேண்டும்.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு பூஜ்யமாக இருக்க வேண்டில்லை.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு எண்களாக இருக்க வேண்டும்.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு ஒற்றையன் எண் தேவை.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான பாஸ்போர்ட் எணாக இருக்க வேண்டும்.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான பாதை தேவை.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான தொலைபேசி எண் தேவை.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு இருக்க வேண்டும்.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு பகോ எணாக இருக்க வேண்டும்.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீடு காலியாக இருக்கக்கூடாது.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டு ஒரு வரிசையாக இருக்க வேண்டும்.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு சமூக காப்பொலி எண் இருக்க வேண்டும்.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான மாநிலமாக இருக்க வேண்டும்.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான தெருப்பெயராக இருக்க வேண்டும்.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான நேரம் தேவை.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான நேரம் மண்டலம் ஆக வேண்டும்.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீடு அதிகமான மதிப்புகளை கொண்டிருக்க வேண்டும்.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீடு பெரிய எழுத்துகளை கொண்டிருக்க வேண்டும்.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான URL முகவரி தேவை.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "பயனர் பெயரில் கோடுகள் இருக்கக் கூடாது.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "பயனர் பெயரில் புள்ளிகள் இருக்கக் கூடாது.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "பயனர் பெயரில் எண்கள் இருக்கக் கூடாது.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "பயனர் பெயரில் இடைவெளிகள் இருக்கக் கூடாது.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "பயனர் பெயரில் சிறப்பு எழுத்துக்கள் இருக்கக் கூடாது.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "பயனர் பெயரில் அடிக்கோடு இருக்கக் கூடாது.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "விலைமை சரியான பயனர் பெயராக இருக்க வேண்டும்.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "இந்த உள்ளீட்டுக்கு சரியான UUID தேவை.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு ஒரு செல்லுபடியான வாகன அடையாள எணாக (VIN) இருக்க வேண்டும்.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "மதிப்பு சரியான ஜிப் குறியீடு இருக்க வேண்டும்.",
    ),
  };
}
