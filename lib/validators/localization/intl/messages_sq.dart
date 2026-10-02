// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sq locale. All the
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
  String get localeName => 'sq';

  static String m0(min, max) =>
      "Vlera duhet të jetë ndërmjet ${min} dhe ${max}.";

  static String m1(colorCode) => "Kjo fushë kërkon një kod ngjyre të vlefshëm.";

  static String m2(value) => "Vlera duhet të përmbajë ${value}.";

  static String m3(min) => "Kjo fushë duhet të përmbajë një shkronjë të vogël.";

  static String m4(min) => "Kjo fushë duhet të përmbajë një numër.";

  static String m5(min) =>
      "Kjo fushë duhet të përmbajë një karakter të veçantë.";

  static String m6(min) => "Kjo fushë duhet të përmbajë një shkronjë të madhe.";

  static String m7(min, max) =>
      "Data duhet të jetë brenda intervalit të lejuar.";

  static String m8(value) => "Vlera duhet të përfundojë me ${value}.";

  static String m9(value) => "Kjo vlerë duhet të jetë e barabartë me ${value}.";

  static String m10(length) =>
      "Vlera duhet të ketë një gjatësi të barabartë me ${length}";

  static String m11(extensions) =>
      "Kjo fushë kërkon një zgjatje skedari të vlefshme.";

  static String m12(fileSize, maxSize) =>
      "Ky skedar tejkalon madhësinë maksimale të lejuar.";

  static String m13(max) =>
      "Vlera duhet të jetë më e vogël ose e barabartë me ${max}.";

  static String m14(maxLength) =>
      "Vlera duhet të ketë një gjatësi më të vogël ose të barabartë me ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Vlera duhet të ketë një numër fjalësh më të vogël ose të barabartë me ${maxWordsCount}.";

  static String m16(min) =>
      "Vlera duhet të jetë më e madhe ose e barabartë me ${min}.";

  static String m17(minLength) =>
      "Vlera duhet të ketë një gjatësi më të madhe ose të barabartë me ${minLength}.";

  static String m18(minWordsCount) =>
      "Vlera duhet të ketë një numër fjalësh më të madh ose të barabartë me ${minWordsCount}.";

  static String m19(value) =>
      "Kjo vlerë nuk duhet të jetë e barabartë me ${value}.";

  static String m20(min, max) =>
      "Kjo fushë kërkon një numër porti të vlefshëm.";

  static String m21(value) => "Vlera duhet të fillojë me ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë duhet të përmbajë vetëm shkronja alfabetike.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një string Base64 të vlefshëm.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një kod BIC të vlefshëm.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një emër qyteti i vlefshëm.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë në listën e vlefshme.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një shtet i vlefshëm.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një kod CVC të vlefshëm për kartën e kreditit.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një numër të vlefshëm për kartën e kreditit.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një datë skadence të vlefshme për kartën e kreditit.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Karta e kreditit ka skaduar.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Data duhet të jetë në të ardhmen.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Data duhet të jetë në të kaluarën.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një datë të vlefshme.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një numër DUNS i vlefshëm.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një adresë e E-mail-i të vlefshme.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një numër çift.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një emër skedari i vlefshëm.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një emër i parë i vlefshëm.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një numër i vlefshëm me pikë lundruese.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një numër i vlefshëm heksadecimal.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një IBAN të vlefshëm.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një numër të plotë të vlefshëm.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Lloji mime i pavlefshëm.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një IP të vlefshme.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një ISBN të vlefshëm.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një JSON të vlefshëm.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një kod gjuhe i vlefshëm.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një mbiemër i vlefshëm.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një gjerësi gjeografike të vlefshme.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një targë makine e vlefshme.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një gjatësi gjeografike të vlefshme.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon shkronja të vogla.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një adresë MAC të vlefshme.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera nuk përputhet me shabllonin.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë duhet të jetë e gabuar.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë duhet të jetë e vërtetë.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një numër negativ.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera nuk duhet të jetë zero.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë numerike.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një numër tek.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një numër pasaporte i vlefshëm.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një rrugë të vlefshme.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një numër telefoni të vlefshëm.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një numër pozitiv.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një numër kryesor i vlefshëm.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë nuk mund të jetë bosh.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një tekst me një rresht.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një numër Social Security i vlefshëm.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një shtet i vlefshëm.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një emër rrugë e vlefshme.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një kohë të vlefshme.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një zonë kohore e vlefshme.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo vlerë duhet të jetë unike.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon shkronja të mëdha.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një adresë URL të vlefshme.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Emri i përdoruesit nuk mund të përmbajë vija.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Emri i përdoruesit nuk mund të përmbajë pika.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Emri i përdoruesit nuk mund të përmbajë numra.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Emri i përdoruesit nuk mund të përmbajë hapësira.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Emri i përdoruesit nuk mund të përmbajë karaktere speciale.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Emri i përdoruesit nuk mund të përmbajë vijë të poshtme.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një emër përdoruesi i vlefshëm.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Kjo fushë kërkon një UUID të vlefshëm.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një VIN i vlefshëm.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vlera duhet të jetë një kod ZIP i vlefshëm.",
    ),
  };
}
