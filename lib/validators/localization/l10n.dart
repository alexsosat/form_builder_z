// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class FormBuilderZLocalizations {
  FormBuilderZLocalizations();

  static FormBuilderZLocalizations? _current;

  static FormBuilderZLocalizations get current {
    assert(
      _current != null,
      'No instance of FormBuilderZLocalizations was loaded. Try to initialize the FormBuilderZLocalizations delegate before accessing FormBuilderZLocalizations.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<FormBuilderZLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = FormBuilderZLocalizations();
      FormBuilderZLocalizations._current = instance;

      return instance;
    });
  }

  static FormBuilderZLocalizations of(BuildContext context) {
    final instance = FormBuilderZLocalizations.maybeOf(context);
    assert(
      instance != null,
      'No instance of FormBuilderZLocalizations present in the widget tree. Did you add FormBuilderZLocalizations.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static FormBuilderZLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<FormBuilderZLocalizations>(
      context,
      FormBuilderZLocalizations,
    );
  }

  /// `Este campo requiere un número de tarjeta de crédito válido.`
  String get creditCardErrorText {
    return Intl.message(
      'Este campo requiere un número de tarjeta de crédito válido.',
      name: 'creditCardErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere una cadena de fecha válida.`
  String get dateStringErrorText {
    return Intl.message(
      'Este campo requiere una cadena de fecha válida.',
      name: 'dateStringErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere una dirección de correo electrónico válida.`
  String get emailErrorText {
    return Intl.message(
      'Este campo requiere una dirección de correo electrónico válida.',
      name: 'emailErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo debe ser igual a {value}.`
  String equalErrorText(Object value) {
    return Intl.message(
      'Este campo debe ser igual a $value.',
      name: 'equalErrorText',
      desc: '',
      args: [value],
    );
  }

  /// `El valor debe tener una longitud igual a {length}.`
  String equalLengthErrorText(Object length) {
    return Intl.message(
      'El valor debe tener una longitud igual a $length.',
      name: 'equalLengthErrorText',
      desc: '',
      args: [length],
    );
  }

  /// `Este campo requiere un entero válido.`
  String get integerErrorText {
    return Intl.message(
      'Este campo requiere un entero válido.',
      name: 'integerErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere una IP válida.`
  String get ipErrorText {
    return Intl.message(
      'Este campo requiere una IP válida.',
      name: 'ipErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor no coincide con el patrón requerido.`
  String get matchErrorText {
    return Intl.message(
      'El valor no coincide con el patrón requerido.',
      name: 'matchErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser menor o igual que {max}.`
  String maxErrorText(Object max) {
    return Intl.message(
      'El valor debe ser menor o igual que $max.',
      name: 'maxErrorText',
      desc: '',
      args: [max],
    );
  }

  /// `El valor debe tener una longitud menor o igual a {maxLength}.`
  String maxLengthErrorText(Object maxLength) {
    return Intl.message(
      'El valor debe tener una longitud menor o igual a $maxLength.',
      name: 'maxLengthErrorText',
      desc: '',
      args: [maxLength],
    );
  }

  /// `El valor debe tener un recuento de palabras menor o igual a {maxWordsCount}.`
  String maxWordsCountErrorText(Object maxWordsCount) {
    return Intl.message(
      'El valor debe tener un recuento de palabras menor o igual a $maxWordsCount.',
      name: 'maxWordsCountErrorText',
      desc: '',
      args: [maxWordsCount],
    );
  }

  /// `El valor debe ser mayor o igual que {min}.`
  String minErrorText(Object min) {
    return Intl.message(
      'El valor debe ser mayor o igual que $min.',
      name: 'minErrorText',
      desc: '',
      args: [min],
    );
  }

  /// `El valor debe tener una longitud mayor o igual a {minLength}.`
  String minLengthErrorText(Object minLength) {
    return Intl.message(
      'El valor debe tener una longitud mayor o igual a $minLength.',
      name: 'minLengthErrorText',
      desc: '',
      args: [minLength],
    );
  }

  /// `El valor debe tener un recuento de palabras mayor o igual a {minWordsCount}.`
  String minWordsCountErrorText(Object minWordsCount) {
    return Intl.message(
      'El valor debe tener un recuento de palabras mayor o igual a $minWordsCount.',
      name: 'minWordsCountErrorText',
      desc: '',
      args: [minWordsCount],
    );
  }

  /// `Este campo no debe ser igual a {value}.`
  String notEqualErrorText(Object value) {
    return Intl.message(
      'Este campo no debe ser igual a $value.',
      name: 'notEqualErrorText',
      desc: '',
      args: [value],
    );
  }

  /// `El valor debe ser numérico.`
  String get numericErrorText {
    return Intl.message(
      'El valor debe ser numérico.',
      name: 'numericErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo no puede estar vacío.`
  String get requiredErrorText {
    return Intl.message(
      'Este campo no puede estar vacío.',
      name: 'requiredErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere una dirección URL válida.`
  String get urlErrorText {
    return Intl.message(
      'Este campo requiere una dirección URL válida.',
      name: 'urlErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un número de teléfono válido.`
  String get phoneErrorText {
    return Intl.message(
      'Este campo requiere un número de teléfono válido.',
      name: 'phoneErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere una fecha de vencimiento válida para la tarjeta de crédito.`
  String get creditCardExpirationDateErrorText {
    return Intl.message(
      'Este campo requiere una fecha de vencimiento válida para la tarjeta de crédito.',
      name: 'creditCardExpirationDateErrorText',
      desc: '',
      args: [],
    );
  }

  /// `La tarjeta de crédito ha expirado.`
  String get creditCardExpiredErrorText {
    return Intl.message(
      'La tarjeta de crédito ha expirado.',
      name: 'creditCardExpiredErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un código CVC válido para la tarjeta de crédito.`
  String get creditCardCVCErrorText {
    return Intl.message(
      'Este campo requiere un código CVC válido para la tarjeta de crédito.',
      name: 'creditCardCVCErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un código de color {colorCode} válido.`
  String colorCodeErrorText(Object colorCode) {
    return Intl.message(
      'Este campo requiere un código de color $colorCode válido.',
      name: 'colorCodeErrorText',
      desc: '',
      args: [colorCode],
    );
  }

  /// `Este campo requiere letras mayúsculas.`
  String get uppercaseErrorText {
    return Intl.message(
      'Este campo requiere letras mayúsculas.',
      name: 'uppercaseErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere letras minúsculas.`
  String get lowercaseErrorText {
    return Intl.message(
      'Este campo requiere letras minúsculas.',
      name: 'lowercaseErrorText',
      desc: '',
      args: [],
    );
  }

  /// `La extensión del archivo debe ser {extensions}.`
  String fileExtensionErrorText(Object extensions) {
    return Intl.message(
      'La extensión del archivo debe ser $extensions.',
      name: 'fileExtensionErrorText',
      desc: '',
      args: [extensions],
    );
  }

  /// `El tamaño del archivo ({fileSize}) debe ser menor que {maxSize}.`
  String fileSizeErrorText(Object fileSize, Object maxSize) {
    return Intl.message(
      'El tamaño del archivo ($fileSize) debe ser menor que $maxSize.',
      name: 'fileSizeErrorText',
      desc: '',
      args: [fileSize, maxSize],
    );
  }

  /// `La fecha debe estar entre {min} y {max}.`
  String dateRangeErrorText(Object min, Object max) {
    return Intl.message(
      'La fecha debe estar entre $min y $max.',
      name: 'dateRangeErrorText',
      desc: '',
      args: [min, max],
    );
  }

  /// `Este campo debe ser verdadero.`
  String get mustBeTrueErrorText {
    return Intl.message(
      'Este campo debe ser verdadero.',
      name: 'mustBeTrueErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo debe ser falso.`
  String get mustBeFalseErrorText {
    return Intl.message(
      'Este campo debe ser falso.',
      name: 'mustBeFalseErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo debe contener al menos {min} caracteres especiales.`
  String containsSpecialCharErrorText(Object min) {
    return Intl.message(
      'Este campo debe contener al menos $min caracteres especiales.',
      name: 'containsSpecialCharErrorText',
      desc: '',
      args: [min],
    );
  }

  /// `Este campo debe contener al menos {min} letras mayúsculas.`
  String containsUppercaseCharErrorText(Object min) {
    return Intl.message(
      'Este campo debe contener al menos $min letras mayúsculas.',
      name: 'containsUppercaseCharErrorText',
      desc: '',
      args: [min],
    );
  }

  /// `Este campo debe contener al menos {min} letras minúsculas.`
  String containsLowercaseCharErrorText(Object min) {
    return Intl.message(
      'Este campo debe contener al menos $min letras minúsculas.',
      name: 'containsLowercaseCharErrorText',
      desc: '',
      args: [min],
    );
  }

  /// `Este campo debe contener al menos {min} números.`
  String containsNumberErrorText(Object min) {
    return Intl.message(
      'Este campo debe contener al menos $min números.',
      name: 'containsNumberErrorText',
      desc: '',
      args: [min],
    );
  }

  /// `Este campo debe contener solo letras.`
  String get alphabeticalErrorText {
    return Intl.message(
      'Este campo debe contener solo letras.',
      name: 'alphabeticalErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un UUID válido.`
  String get uuidErrorText {
    return Intl.message(
      'Este campo requiere un UUID válido.',
      name: 'uuidErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un JSON válido.`
  String get jsonErrorText {
    return Intl.message(
      'Este campo requiere un JSON válido.',
      name: 'jsonErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere una latitud válida.`
  String get latitudeErrorText {
    return Intl.message(
      'Este campo requiere una latitud válida.',
      name: 'latitudeErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere una longitud válida.`
  String get longitudeErrorText {
    return Intl.message(
      'Este campo requiere una longitud válida.',
      name: 'longitudeErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere una cadena Base64 válida.`
  String get base64ErrorText {
    return Intl.message(
      'Este campo requiere una cadena Base64 válida.',
      name: 'base64ErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere una ruta válida.`
  String get pathErrorText {
    return Intl.message(
      'Este campo requiere una ruta válida.',
      name: 'pathErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un número impar.`
  String get oddNumberErrorText {
    return Intl.message(
      'Este campo requiere un número impar.',
      name: 'oddNumberErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un número par.`
  String get evenNumberErrorText {
    return Intl.message(
      'Este campo requiere un número par.',
      name: 'evenNumberErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un número de puerto válido entre {min} y {max}.`
  String portNumberErrorText(Object min, Object max) {
    return Intl.message(
      'Este campo requiere un número de puerto válido entre $min y $max.',
      name: 'portNumberErrorText',
      desc: '',
      args: [min, max],
    );
  }

  /// `Este campo requiere una dirección MAC válida.`
  String get macAddressErrorText {
    return Intl.message(
      'Este campo requiere una dirección MAC válida.',
      name: 'macAddressErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe comenzar con {value}.`
  String startsWithErrorText(Object value) {
    return Intl.message(
      'El valor debe comenzar con $value.',
      name: 'startsWithErrorText',
      desc: '',
      args: [value],
    );
  }

  /// `El valor debe terminar con {value}.`
  String endsWithErrorText(Object value) {
    return Intl.message(
      'El valor debe terminar con $value.',
      name: 'endsWithErrorText',
      desc: '',
      args: [value],
    );
  }

  /// `El valor debe contener {value}.`
  String containsErrorText(Object value) {
    return Intl.message(
      'El valor debe contener $value.',
      name: 'containsErrorText',
      desc: '',
      args: [value],
    );
  }

  /// `El valor debe estar entre {min} y {max}.`
  String betweenErrorText(Object min, Object max) {
    return Intl.message(
      'El valor debe estar entre $min y $max.',
      name: 'betweenErrorText',
      desc: '',
      args: [min, max],
    );
  }

  /// `El valor debe estar en la lista de valores permitidos.`
  String get containsElementErrorText {
    return Intl.message(
      'El valor debe estar en la lista de valores permitidos.',
      name: 'containsElementErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un IBAN válido.`
  String get ibanErrorText {
    return Intl.message(
      'Este campo requiere un IBAN válido.',
      name: 'ibanErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un valor único.`
  String get uniqueErrorText {
    return Intl.message(
      'Este campo requiere un valor único.',
      name: 'uniqueErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un código BIC válido.`
  String get bicErrorText {
    return Intl.message(
      'Este campo requiere un código BIC válido.',
      name: 'bicErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere un ISBN válido.`
  String get isbnErrorText {
    return Intl.message(
      'Este campo requiere un ISBN válido.',
      name: 'isbnErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo debe contener una sola línea de texto.`
  String get singleLineErrorText {
    return Intl.message(
      'Este campo debe contener una sola línea de texto.',
      name: 'singleLineErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Este campo requiere una hora válida.`
  String get timeErrorText {
    return Intl.message(
      'Este campo requiere una hora válida.',
      name: 'timeErrorText',
      desc: '',
      args: [],
    );
  }

  /// `La fecha debe estar en el futuro.`
  String get dateMustBeInTheFutureErrorText {
    return Intl.message(
      'La fecha debe estar en el futuro.',
      name: 'dateMustBeInTheFutureErrorText',
      desc: '',
      args: [],
    );
  }

  /// `La fecha debe estar en el pasado.`
  String get dateMustBeInThePastErrorText {
    return Intl.message(
      'La fecha debe estar en el pasado.',
      name: 'dateMustBeInThePastErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un nombre de archivo válido.`
  String get fileNameErrorText {
    return Intl.message(
      'El valor debe ser un nombre de archivo válido.',
      name: 'fileNameErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un número negativo.`
  String get negativeNumberErrorText {
    return Intl.message(
      'El valor debe ser un número negativo.',
      name: 'negativeNumberErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un número positivo.`
  String get positiveNumberErrorText {
    return Intl.message(
      'El valor debe ser un número positivo.',
      name: 'positiveNumberErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor no debe ser cero.`
  String get notZeroNumberErrorText {
    return Intl.message(
      'El valor no debe ser cero.',
      name: 'notZeroNumberErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un número de Seguro Social válido.`
  String get ssnErrorText {
    return Intl.message(
      'El valor debe ser un número de Seguro Social válido.',
      name: 'ssnErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un código ZIP válido.`
  String get zipCodeErrorText {
    return Intl.message(
      'El valor debe ser un código ZIP válido.',
      name: 'zipCodeErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un nombre de usuario válido.`
  String get usernameErrorText {
    return Intl.message(
      'El valor debe ser un nombre de usuario válido.',
      name: 'usernameErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El nombre de usuario no puede contener números.`
  String get usernameCannotContainNumbersErrorText {
    return Intl.message(
      'El nombre de usuario no puede contener números.',
      name: 'usernameCannotContainNumbersErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El nombre de usuario no puede contener guiones bajos.`
  String get usernameCannotContainUnderscoreErrorText {
    return Intl.message(
      'El nombre de usuario no puede contener guiones bajos.',
      name: 'usernameCannotContainUnderscoreErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El nombre de usuario no puede contener caracteres especiales.`
  String get usernameCannotContainSpecialCharErrorText {
    return Intl.message(
      'El nombre de usuario no puede contener caracteres especiales.',
      name: 'usernameCannotContainSpecialCharErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El nombre de usuario no puede contener espacios.`
  String get usernameCannotContainSpacesErrorText {
    return Intl.message(
      'El nombre de usuario no puede contener espacios.',
      name: 'usernameCannotContainSpacesErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El nombre de usuario no puede contener puntos.`
  String get usernameCannotContainDotsErrorText {
    return Intl.message(
      'El nombre de usuario no puede contener puntos.',
      name: 'usernameCannotContainDotsErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El nombre de usuario no puede contener guiones.`
  String get usernameCannotContainDashesErrorText {
    return Intl.message(
      'El nombre de usuario no puede contener guiones.',
      name: 'usernameCannotContainDashesErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Tipo MIME inválido.`
  String get invalidMimeTypeErrorText {
    return Intl.message(
      'Tipo MIME inválido.',
      name: 'invalidMimeTypeErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser una zona horaria válida.`
  String get timezoneErrorText {
    return Intl.message(
      'El valor debe ser una zona horaria válida.',
      name: 'timezoneErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un nombre de ciudad válido.`
  String get cityErrorText {
    return Intl.message(
      'El valor debe ser un nombre de ciudad válido.',
      name: 'cityErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un país válido.`
  String get countryErrorText {
    return Intl.message(
      'El valor debe ser un país válido.',
      name: 'countryErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un estado válido.`
  String get stateErrorText {
    return Intl.message(
      'El valor debe ser un estado válido.',
      name: 'stateErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un nombre de calle válido.`
  String get streetErrorText {
    return Intl.message(
      'El valor debe ser un nombre de calle válido.',
      name: 'streetErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un nombre válido.`
  String get firstNameErrorText {
    return Intl.message(
      'El valor debe ser un nombre válido.',
      name: 'firstNameErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un apellido válido.`
  String get lastNameErrorText {
    return Intl.message(
      'El valor debe ser un apellido válido.',
      name: 'lastNameErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un número de pasaporte válido.`
  String get passportNumberErrorText {
    return Intl.message(
      'El valor debe ser un número de pasaporte válido.',
      name: 'passportNumberErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un número primo.`
  String get primeNumberErrorText {
    return Intl.message(
      'El valor debe ser un número primo.',
      name: 'primeNumberErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un número DUNS válido.`
  String get dunsErrorText {
    return Intl.message(
      'El valor debe ser un número DUNS válido.',
      name: 'dunsErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser una placa de matrícula válida.`
  String get licensePlateErrorText {
    return Intl.message(
      'El valor debe ser una placa de matrícula válida.',
      name: 'licensePlateErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un VIN válido.`
  String get vinErrorText {
    return Intl.message(
      'El valor debe ser un VIN válido.',
      name: 'vinErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un código de idioma válido.`
  String get languageCodeErrorText {
    return Intl.message(
      'El valor debe ser un código de idioma válido.',
      name: 'languageCodeErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un número de punto flotante válido.`
  String get floatErrorText {
    return Intl.message(
      'El valor debe ser un número de punto flotante válido.',
      name: 'floatErrorText',
      desc: '',
      args: [],
    );
  }

  /// `El valor debe ser un número hexadecimal válido.`
  String get hexadecimalErrorText {
    return Intl.message(
      'El valor debe ser un número hexadecimal válido.',
      name: 'hexadecimalErrorText',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate
    extends LocalizationsDelegate<FormBuilderZLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'bg'),
      Locale.fromSubtags(languageCode: 'bn'),
      Locale.fromSubtags(languageCode: 'bs'),
      Locale.fromSubtags(languageCode: 'ca'),
      Locale.fromSubtags(languageCode: 'cs'),
      Locale.fromSubtags(languageCode: 'da'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'el'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'et'),
      Locale.fromSubtags(languageCode: 'fa'),
      Locale.fromSubtags(languageCode: 'fi'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'he'),
      Locale.fromSubtags(languageCode: 'hi'),
      Locale.fromSubtags(languageCode: 'hr'),
      Locale.fromSubtags(languageCode: 'hu'),
      Locale.fromSubtags(languageCode: 'id'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'ka'),
      Locale.fromSubtags(languageCode: 'km'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'ku'),
      Locale.fromSubtags(languageCode: 'lo'),
      Locale.fromSubtags(languageCode: 'lv'),
      Locale.fromSubtags(languageCode: 'mn'),
      Locale.fromSubtags(languageCode: 'ms'),
      Locale.fromSubtags(languageCode: 'ne'),
      Locale.fromSubtags(languageCode: 'nl'),
      Locale.fromSubtags(languageCode: 'no'),
      Locale.fromSubtags(languageCode: 'pl'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'rm'),
      Locale.fromSubtags(languageCode: 'ro'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'sk'),
      Locale.fromSubtags(languageCode: 'sl'),
      Locale.fromSubtags(languageCode: 'sq'),
      Locale.fromSubtags(languageCode: 'sv'),
      Locale.fromSubtags(languageCode: 'sw'),
      Locale.fromSubtags(languageCode: 'ta'),
      Locale.fromSubtags(languageCode: 'th'),
      Locale.fromSubtags(languageCode: 'tr'),
      Locale.fromSubtags(languageCode: 'uk'),
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'zh'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<FormBuilderZLocalizations> load(Locale locale) =>
      FormBuilderZLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
