// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fi locale. All the
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
  String get localeName => 'fi';

  static String m0(min, max) => "Arvon on oltava välillä ${min} ja ${max}.";

  static String m1(colorCode) => "Vaaditaan oikean muotoinen värikoodi.";

  static String m2(value) => "Arvon on sisällettävä ${value}.";

  static String m3(min) => "Kentän on sisällettävä pieni kirjain.";

  static String m4(min) => "Kentän on sisällettävä numero.";

  static String m5(min) => "Kentän on sisällettävä erikoismerkki.";

  static String m6(min) => "Kentän on sisällettävä iso kirjain.";

  static String m7(min, max) => "Päivämäärän on oltava sallitussa aikavälissä.";

  static String m8(value) => "Arvon on loputtava merkkiin ${value}.";

  static String m9(value) => "Kentän on vastattava arvoa ${value}.";

  static String m10(length) => "Merkkijonon pituus on oltava ${length}.";

  static String m11(extensions) => "Vaaditaan oikean muotoinen tiedostopääte.";

  static String m12(fileSize, maxSize) =>
      "Tiedosto ylittää sallitun enimmäiskoon.";

  static String m13(max) =>
      "Arvon tulee olla pienempi tai yhtä suuri kuin ${max}.";

  static String m14(maxLength) =>
      "Merkkijonon pituuden tulee olla pienempi tai yhtä suuri kuin ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Sanamäärän tulee olla pienempi tai yhtä suuri kuin ${maxWordsCount}.";

  static String m16(min) =>
      "Kentän arvon tulee olla suurempi tai yhtä suuri kuin ${min}.";

  static String m17(minLength) =>
      "Merkkijonon pituuden tulee olla suurempi tai yhtä suuri kuin ${minLength}.";

  static String m18(minWordsCount) =>
      "Sanamäärän tulee olla suurempi tai yhtä suuri kuin ${minWordsCount}.";

  static String m19(value) =>
      "Tämän kentän arvo ei saa olla sama kuin ${value}.";

  static String m20(min, max) => "Vaaditaan oikean muotoinen porttinumero.";

  static String m21(value) => "Arvon on alettava merkillä ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Kentän on sisällettävä vain kirjaimia.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen Base64-merkkijono.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen BIC-koodi.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen kaupungin nimi.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava sallittujen arvojen luettelossa.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen maa.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen luottokortin CVC-koodi.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Luottokortin numero on oltava oikeassa muodossa.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan voimassa oleva luottokortin voimassaoloaika.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Luottokortti on vanhentunut.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Päivämäärän tulee olla tulevaisuudessa.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Päivämäärän tulee olla menneisyydessä.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Päivämäärä ei ole oikeassa muodossa.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen DUNS-numero.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Sähköpostiosoitteen muoto ei ole oikea.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Kenttä vaatii parillisen luvun.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon tulee olla kelvollinen tiedostonimi.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen etunimi.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen liukuluku.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen heksadesimaaliluku.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen IBAN-tilinumero.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Tarvitaan voimassa oleva kokonaisluku.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Virheellinen MIME-tyyppi.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "IP-osoitteen muoto on annettava oikein.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen ISBN-koodi.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen kielikoodi.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen sukunimi.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen leveysaste.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen rekisterinumero.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen pituusaste.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Kenttä vaatii pieniä kirjaimia.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen MAC-osoite.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvo ei vastaa muotovaatimuksia.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Kentän on oltava epätosi.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Kentän on oltava tosi.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon tulee olla negatiivinen luku.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon ei tule olla nolla.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon tulee olla numeerinen.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Kenttä vaatii parittoman luvun.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen passinumero.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen polku.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen puhelinnumero.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon tulee olla positiivinen luku.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava alkuluku.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Kenttä ei voi olla tyhjä.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Kentän arvon tulee olla yksirivinen.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon tulee olla kelvollinen henkilötunnus.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen osavaltio.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen kadunnimi.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen kellonaika.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen aikavyöhyke.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Kentän arvon tulee olla uniikki.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Kenttä vaatii isoja kirjaimia.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen URL-osoite.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Käyttäjänimi ei saa sisältää viivoja.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Käyttäjänimi ei saa sisältää pisteitä.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Käyttäjänimi ei saa sisältää numeroita.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Käyttäjänimi ei saa sisältää välilyöntejä.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Käyttäjänimi ei saa sisältää erikoismerkkejä.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Käyttäjänimi ei saa sisältää alaviivaa.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon täytyy olla kelvollinen käyttäjänimi.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Vaaditaan oikean muotoinen UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon on oltava kelvollinen VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Arvon tulee olla kelvollinen postinumero.",
    ),
  };
}
