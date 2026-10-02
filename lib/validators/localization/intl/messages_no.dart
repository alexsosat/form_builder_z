// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a no locale. All the
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
  String get localeName => 'no';

  static String m0(min, max) => "Verdien må være mellom ${min} og ${max}.";

  static String m1(colorCode) => "Dette feltet krever en gyldig fargekode.";

  static String m2(value) => "Verdien må inneholde ${value}.";

  static String m3(min) => "Dette feltet må inneholde små bokstaver.";

  static String m4(min) => "Dette feltet må inneholde tall.";

  static String m5(min) => "Dette feltet må inneholde spesialtegn.";

  static String m6(min) => "Dette feltet må inneholde store bokstaver.";

  static String m7(min, max) => "Datoen må være innenfor det tillatte området.";

  static String m8(value) => "Verdien må slutte med ${value}.";

  static String m9(value) => "Verdien i dette feltet må være lik ${value}.";

  static String m10(length) => "Verdien må ha lengden ${length}.";

  static String m11(extensions) => "Dette feltet krever en gyldig filtype.";

  static String m12(fileSize, maxSize) =>
      "Denne filen overskrider maksimal tillatt størrelse.";

  static String m13(max) => "Verdien må være mindre enn eller lik ${max}.";

  static String m14(maxLength) =>
      "Verdien må være mindre enn eller lik ${maxLength} tegn.";

  static String m15(maxWordsCount) =>
      "Antall ord må være mindre enn eller lik ${maxWordsCount}.";

  static String m16(min) => "Verdien må være større enn eller lik ${min}.";

  static String m17(minLength) =>
      "Verdien må være større enn eller lik ${minLength} tegn.";

  static String m18(minWordsCount) =>
      "Antall ord må være større enn eller lik ${minWordsCount}.";

  static String m19(value) => "Verdien i feltet må ikke være lik ${value}.";

  static String m20(min, max) => "Dette feltet krever et gyldig portnummer.";

  static String m21(value) => "Verdien må starte med ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet må inneholde kun bokstaver.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig Base64-streng.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig BIC.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig bynavn.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være i listen over tillatte verdier.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig land.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig CVC-kode for kredittkortet.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever et gyldig kredittkortnummer.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig utløpsdato for kredittkortet.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Kredittkortet er utløpt.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Datoen må være i fremtiden.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Datoen må være i fortiden.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig dato.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig DUNS-nummer.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig e-postadresse.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever et partall.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig filnavn.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig fornavn.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig flyttall.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig heksadesimalt tall.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et heltall.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Ugyldig mime-type.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig IP-adresse.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig ISBN.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være en gyldig språkkode.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig etternavn.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig breddegrad.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig registreringsnummer.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig lengdegrad.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever små bokstaver.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig MAC-adresse.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien samsvarer ikke med mønsteret.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet må være usant.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet må være sant.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et negativt tall.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien kan ikke være null.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være numerisk.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever et oddetall.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig passnummer.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig bane.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever et gyldig telefonnummer.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et positivt tall.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et primtall.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet må fylles ut.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet må være en enkelt linje.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig personnummer.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være en gyldig delstat.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig gatenavn.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig klokkeslett.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være en gyldig tidssone.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en unik verdi.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever store bokstaver.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Må være en gyldig URL-adresse.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Brukernavn kan ikke inneholde bindestreker.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Brukernavn kan ikke inneholde prikker.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Brukernavn kan ikke inneholde tall.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Brukernavn kan ikke inneholde mellomrom.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Brukernavn kan ikke inneholde spesialtegn.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Brukernavn kan ikke inneholde understrek.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig brukernavn.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Dette feltet krever en gyldig UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være et gyldig VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Verdien må være en gyldig postnummer.",
    ),
  };
}
