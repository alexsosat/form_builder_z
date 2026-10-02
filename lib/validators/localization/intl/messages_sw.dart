// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sw locale. All the
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
  String get localeName => 'sw';

  static String m0(min, max) => "Thamani lazima iwe kati ya ${min} na ${max}.";

  static String m1(colorCode) => "Sehemu hii inahitaji msimbo halali wa rangi.";

  static String m2(value) => "Thamani lazima iwe na ${value}.";

  static String m3(min) => "Sehemu hii lazima iwe na herufi ndogo.";

  static String m4(min) => "Sehemu hii lazima iwe na nambari.";

  static String m5(min) => "Sehemu hii lazima iwe na herufi maalum.";

  static String m6(min) => "Sehemu hii lazima iwe na herufi kubwa.";

  static String m7(min, max) =>
      "Tarehe lazima iwe ndani ya kikomo kilichoruhusiwa.";

  static String m8(value) => "Thamani lazima imalizike na ${value}.";

  static String m9(value) =>
      "Thamani ya sehemu hii lazima iwe sawa na ${value}.";

  static String m10(length) => "Thamani lazima iwe na urefu sawa na ${length}.";

  static String m11(extensions) =>
      "Sehemu hii inahitaji kiendelezi halali cha faili.";

  static String m12(fileSize, maxSize) =>
      "Faili hili linazidi ukubwa wa juu ulioruhusiwa.";

  static String m13(max) => "Thamani lazima iwe chini ya au sawa na ${max}.";

  static String m14(maxLength) =>
      "Thamani lazima iwe na urefu chini ya au sawa na ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Thamani lazima iwe na hesabu ya maneno chini ya au sawa na ${maxWordsCount}.";

  static String m16(min) =>
      "Thamani lazima iwe kubwa kuliko au sawa na ${min}.";

  static String m17(minLength) =>
      "Thamani lazima iwe na urefu mkubwa kuliko au sawa na ${minLength}.";

  static String m18(minWordsCount) =>
      "Thamani lazima iwe na maneno kuhesabu kubwa kuliko au sawa na ${minWordsCount}.";

  static String m19(value) =>
      "Thamani hii ya sehemu haifai kuwa sawa na ${value}.";

  static String m20(min, max) =>
      "Sehemu hii inahitaji nambari halali ya bandari.";

  static String m21(value) => "Thamani lazima ianze na ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii lazima iwe na herufi pekee.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji mfuatano halali wa Base64.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji BIC halali.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe jina halali la jiji.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe kwenye orodha ya thamani zinazokubalika.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe nchi halali.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji msimbo halali wa CVC wa kadi ya mkopo.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji nambari halali ya kadi ya mkopo.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji tarehe halali ya kumalizika kwa kadi ya mkopo.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Kadi ya mkopo imeisha muda wake.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Date ilo fure.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Date du laaynaa.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji mfuatano halali wa tarehe.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe nambari halali ya DUNS.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji barua pepe halali.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji nambari ya kawaida.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Teel  xool mu araal file.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe jina halali la kwanza.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe nambari sahihi ya nukta mvutano.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe nambari sahihi ya hekshadesimali.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji IBAN halali.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji nambari kamili halali.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Aina batili ya mime.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji IP halali.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji ISBN halali.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji JSON halali.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe msimbo halali wa lugha.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe jina halali la mwisho.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji latitudo halali.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe nambari sahihi ya leseni.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji longitudo halali.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji herufi ndogo.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji anwani halali ya MAC.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani hailingani na muundo.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii lazima iwe uongo.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii lazima iwe kweli.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Deffee bu xam xam.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Deffee waa 0 loo xanbaareeyo.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe nambari.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji nambari isiyo ya kawaida.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe nambari halali ya pasi.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji njia halali.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji nambari halali ya simu.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Deffee bu xam xam.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe nambari tambuzi.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii haiwezi kuwa tupu.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji mstari mmoja tu.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Deffee waa nambarka xidhiidhka bulshada ee saxda ah.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe jimbo halali.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe jina halali la barabara.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji wakati halali.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe sauti halali ya muda.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe ya kipekee.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji herufi kubwa.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji anwani sahihi ya tovuti.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Jina la mtumiaji haliwezi kuwa na mistari ya usawa.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Jina la mtumiaji haliwezi kuwa na nukta.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Jina la mtumiaji haliwezi kuwa na nambari.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Jina la mtumiaji haliwezi kuwa na nafasi.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Jina la mtumiaji haliwezi kuwa na herufi maalum.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Jina la mtumiaji haliwezi kuwa na alama ya underscore.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe jina la mtumiaji halali.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Sehemu hii inahitaji UUID halali.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Thamani lazima iwe VIN halali.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Deffee waa lambarka Zip ee saxda ah.",
    ),
  };
}
