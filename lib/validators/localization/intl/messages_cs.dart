// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a cs locale. All the
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
  String get localeName => 'cs';

  static String m0(min, max) => "Hodnota musí být mezi ${min} a ${max}.";

  static String m1(colorCode) => "Pole vyžaduje platný barevný kód.";

  static String m2(value) => "Hodnota musí obsahovat ${value}.";

  static String m3(min) => "Pole musí obsahovat malé písmeno.";

  static String m4(min) => "Pole musí obsahovat číslo.";

  static String m5(min) => "Pole musí obsahovat speciální znak.";

  static String m6(min) => "Pole musí obsahovat velké písmeno.";

  static String m7(min, max) => "Datum musí být v povoleném rozsahu.";

  static String m8(value) => "Hodnota musí končit na ${value}.";

  static String m9(value) => "Hodnota se musí rovnat ${value}.";

  static String m10(length) => "Hodnota musí mít délku rovnu ${length}.";

  static String m11(extensions) => "Pole vyžaduje platnou příponu souboru.";

  static String m12(fileSize, maxSize) =>
      "Tento soubor překračuje maximální povolenou velikost.";

  static String m13(max) => "Hodnota musí být menší než nebo rovna ${max}.";

  static String m14(maxLength) =>
      "Hodnota musí mít délku menší než nebo rovnu ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Hodnota musí mít počet slov menší nebo rovná ${maxWordsCount}.";

  static String m16(min) => "Hodnota musí být větší než nebo rovna ${min}.";

  static String m17(minLength) =>
      "Hodnota musí mít délku větší než nebo rovnu ${minLength}.";

  static String m18(minWordsCount) =>
      "Hodnota musí mít počet slov větší nebo rovná ${minWordsCount}.";

  static String m19(value) => "Hodnota se nesmí rovnat ${value}.";

  static String m20(min, max) => "Pole vyžaduje platné číslo portu.";

  static String m21(value) => "Hodnota musí začínat na ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole musí obsahovat pouze písmena.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platný řetězec Base64.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platný BIC kód.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platný název města.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být v seznamu povolených hodnot.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platná země.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platný CVC kód kreditní karty.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platné číslo kreditní karty.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platné datum vypršení platnosti kreditní karty.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Platnost kreditní karty vypršela.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Datum musí být v budoucnosti.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Datum musí být v minulosti.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platný zápis data.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platné číslo DUNS.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platnou e-mailovou adresu.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje sudé číslo.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platným názvem souboru.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platné jméno.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platné desetinné číslo.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platné šestnáctkové číslo.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platné IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být celé číslo.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Neplatný typ MIME.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platnou IP adresu.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platné ISBN.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platný JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platný kód jazyka.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platné příjmení.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platnou zeměpisnou šířku.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platná poznávací značka.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platnou zeměpisnou délku.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje malá písmena.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platnou MAC adresu.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota neodpovídá vzoru.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole musí být nepravdivé.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Toto pole musí být pravdivé.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být záporné číslo.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota nesmí být nula.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být číslo.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje liché číslo.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platné číslo pasu.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platnou cestu.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platné telefonní číslo.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být kladné číslo.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být prvočíslo.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole nemůže být prázdné.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole musí obsahovat pouze jednu řádku.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platné číslo sociálního zabezpečení.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platný název státu.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platný název ulice.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platný čas.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platné časové pásmo.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být jedinečná.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje velká písmena.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platnou adresu URL.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Uživatelské jméno nesmí obsahovat pomlčky.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Uživatelské jméno nesmí obsahovat tečky.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Uživatelské jméno nesmí obsahovat čísla.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Uživatelské jméno nesmí obsahovat mezery.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Uživatelské jméno nesmí obsahovat speciální znaky.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Uživatelské jméno nesmí obsahovat podtržítko.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platným uživatelským jménem.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Pole vyžaduje platný UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platný VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Hodnota musí být platné PSČ.",
    ),
  };
}
