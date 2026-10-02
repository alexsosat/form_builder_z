// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(min, max) =>
      "La valeur doit être comprise entre ${min} et ${max}.";

  static String m1(colorCode) => "Ce champ nécessite un code couleur valide.";

  static String m2(value) => "La valeur doit contenir ${value}.";

  static String m3(min) => "Ce champ doit contenir une lettre minuscule.";

  static String m4(min) => "Ce champ doit contenir un chiffre.";

  static String m5(min) => "Ce champ doit contenir un caractère spécial.";

  static String m6(min) => "Ce champ doit contenir une lettre majuscule.";

  static String m7(min, max) =>
      "La date doit être dans l\'intervalle autorisé.";

  static String m8(value) => "La valeur doit se terminer par ${value}.";

  static String m9(value) =>
      "Cette valeur de champ doit être égale à ${value}.";

  static String m10(length) =>
      "La valeur doit avoir une longueur égale à ${length}.";

  static String m11(extensions) =>
      "Ce champ nécessite une extension de fichier valide.";

  static String m12(fileSize, maxSize) =>
      "Ce fichier dépasse la taille maximale autorisée.";

  static String m13(max) => "La valeur doit être inférieure ou égale à ${max}.";

  static String m14(maxLength) =>
      "La valeur doit avoir une longueur inférieure ou égale à ${maxLength}.";

  static String m15(maxWordsCount) =>
      "La valeur doit avoir un nombre de mots inférieur ou égal à ${maxWordsCount}.";

  static String m16(min) => "La valeur doit être supérieure ou égale à ${min}.";

  static String m17(minLength) =>
      "La valeur doit avoir une longueur supérieure ou égale à ${minLength}.";

  static String m18(minWordsCount) =>
      "La valeur doit avoir un nombre de mots supérieur ou égal à ${minWordsCount}.";

  static String m19(value) =>
      "Cette valeur de champ ne doit pas être égale à ${value}.";

  static String m20(min, max) => "Ce champ nécessite un numéro de port valide.";

  static String m21(value) => "La valeur doit commencer par ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ doit contenir uniquement des lettres.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite une chaîne Base64 valide.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un code BIC valide.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un nom de ville valide.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être dans la liste des valeurs autorisées.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un pays valide.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un code CVC valide pour la carte de crédit.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un numéro de carte de crédit valide.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite une date d\'expiration valide pour la carte de crédit.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "La carte de crédit a expiré.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "La date doit être dans le futur.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "La date doit être dans le passé.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite une chaîne de date valide.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un numéro DUNS valide.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite une adresse e-mail valide.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un nombre pair.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un nom de fichier valide.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un prénom valide.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un nombre à virgule flottante valide.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un nombre hexadécimal valide.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un IBAN valide.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un entier valide.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Type MIME invalide.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite une adresse IP valide.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un ISBN valide.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un JSON valide.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un code de langue valide.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un nom de famille valide.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite une latitude valide.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être une plaque d\'immatriculation valide.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite une longitude valide.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite des lettres minuscules.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite une adresse MAC valide.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur ne correspond pas au modèle.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ doit être faux.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ doit être vrai.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un nombre négatif.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur ne doit pas être zéro.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être numérique.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un nombre impair.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un numéro de passeport valide.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un chemin valide.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un numéro de téléphone valide.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un nombre positif.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un nombre premier.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ ne peut pas être vide.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ doit être une seule ligne.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un numéro de sécurité sociale valide.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un état valide.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un nom de rue valide.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite une heure valide.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un fuseau horaire valide.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ doit être unique.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite des lettres majuscules.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite une adresse URL valide.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Le nom d\'utilisateur ne peut pas contenir de tirets.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Le nom d\'utilisateur ne peut pas contenir de points.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Le nom d\'utilisateur ne peut pas contenir de chiffres.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Le nom d\'utilisateur ne peut pas contenir d\'espaces.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Le nom d\'utilisateur ne peut pas contenir de caractères spéciaux.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Le nom d\'utilisateur ne peut pas contenir de tiret bas.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un nom d\'utilisateur valide.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Ce champ nécessite un UUID valide.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un numéro VIN valide.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "La valeur doit être un code postal valide.",
    ),
  };
}
