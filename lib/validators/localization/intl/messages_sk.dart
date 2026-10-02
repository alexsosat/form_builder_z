// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sk locale. All the
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
  String get localeName => 'sk';

  static String m0(min, max) => "Hodnota musí byť medzi ${min} a ${max}.";

  static String m1(colorCode) => "Toto pole vyžaduje platný farebný kód.";

  static String m2(value) => "Hodnota musí obsahovať ${value}.";

  static String m3(min) => "Toto pole musí obsahovať malé písmená.";

  static String m4(min) => "Toto pole musí obsahovať číslo.";

  static String m5(min) => "Toto pole musí obsahovať špeciálny znak.";

  static String m6(min) => "Toto pole musí obsahovať veľké písmená.";

  static String m7(min, max) => "Dátum musí byť v povolenom rozsahu.";

  static String m8(value) => "Hodnota musí končiť na ${value}.";

  static String m9(value) => "Hodnota tohto poľa musí byť ${value}.";

  static String m10(length) => "Hodnota musí mať dĺžku rovnú ${length}.";

  static String m11(extensions) => "Toto pole vyžaduje platnú príponu súboru.";

  static String m12(fileSize, maxSize) =>
      "Tento súbor prekračuje maximálnu povolenú veľkosť.";

  static String m13(max) => "Hodnota musí byť menšia alebo rovná ako ${max}.";

  static String m14(maxLength) =>
      "Hodnota musí mať dĺžku najviac ${maxLength} znakov.";

  static String m15(maxWordsCount) =>
      "Hodnota musí mať počet slov menší alebo rovný ${maxWordsCount}.";

  static String m16(min) => "Hodnota musí byť väčšia alebo rovná ako ${min}.";

  static String m17(minLength) =>
      "Hodnota musí mať dĺžku aspoň ${minLength} znakov.";

  static String m18(minWordsCount) =>
      "Hodnota musí mať počet slov väčší alebo rovný ${minWordsCount}.";

  static String m19(value) => "Hodnota tohto poľa nesmie byť ${value}.";

  static String m20(min, max) => "Toto pole vyžaduje platné číslo portu.";

  static String m21(value) => "Hodnota musí začínať na ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole musí obsahovať iba písmená.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platný Base64 reťazec.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platný BIC kód.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platný názov mesta.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť v zozname povolených hodnôt.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platná krajina.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platný CVC kód kreditnej karty.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platné číslo platobnej karty.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platný dátum exspirácie kreditnej karty.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Platnosť kreditnej karty vypršala.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Dátum musí byť v budúcnosti.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Dátum musí byť v minulosti.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platný dátum.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platné číslo DUNS.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platnú emailovú adresu.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje párne číslo.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platným názvom súboru.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platné krstné meno.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platné desatinné číslo.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platné hexadecimálne číslo.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platné IBAN číslo.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť celé číslo.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Neplatný typ MIME.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platnú IP adresu.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platné ISBN číslo.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platný JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platný kód jazyka.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platné priezvisko.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platnú zemepisnú šírku.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platné číslo evidenčnej značky vozidla.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platnú zemepisnú dĺžku.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje malé písmená.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platnú MAC adresu.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota nevyhovuje očakávanému tvaru.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole musí byť nepravdivé.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole musí byť pravdivé.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť záporné číslo.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota nemôže byť nula.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť číslo.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje nepárne číslo.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platné číslo pasu.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platnú cestu.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platné telefónne číslo.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť kladné číslo.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť prvočíslo.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole nesmie byť prázdne.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje jedno riadkový text.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platné číslo sociálneho zabezpečenia.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platný názov štátu.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platný názov ulice.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platný čas.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platné časové pásmo.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje unikátnu hodnotu.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje veľké písmená.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platnú URL adresu.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Používateľské meno nemôže obsahovať pomlčky.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Používateľské meno nemôže obsahovať bodky.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Používateľské meno nemôže obsahovať čísla.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Používateľské meno nemôže obsahovať medzery.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Používateľské meno nemôže obsahovať špeciálne znaky.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Používateľské meno nemôže obsahovať podtržník.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platné používateľské meno.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole vyžaduje platné UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platné číslo VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí byť platným PSČ.",
    ),
  };
}
