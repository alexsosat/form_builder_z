// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a el locale. All the
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
  String get localeName => 'el';

  static String m0(min, max) =>
      "Η τιμή πρέπει να είναι μεταξύ ${min} και ${max}.";

  static String m1(colorCode) =>
      "Η τιμή πρέπει να είναι έγκυρος κωδικός χρώματος.";

  static String m2(value) => "Η τιμή πρέπει να περιέχει ${value}.";

  static String m3(min) => "Η τιμή πρέπει να περιέχει ένα μικρό γράμμα.";

  static String m4(min) => "Η τιμή πρέπει να περιέχει έναν αριθμό.";

  static String m5(min) => "Η τιμή πρέπει να περιέχει έναν ειδικό χαρακτήρα.";

  static String m6(min) => "Η τιμή πρέπει να περιέχει ένα κεφαλαίο γράμμα.";

  static String m7(min, max) =>
      "Η ημερομηνία πρέπει να είναι εντός του επιτρεπόμενου εύρους.";

  static String m8(value) => "Η τιμή πρέπει να τελειώνει με ${value}.";

  static String m9(value) => "Η τιμή πρέπει να είναι ίση με ${value}.";

  static String m10(length) => "Η τιμή πρέπει να έχει μήκος ίσο με ${length}.";

  static String m11(extensions) =>
      "Η τιμή πρέπει να είναι έγκυρη επέκταση αρχείου.";

  static String m12(fileSize, maxSize) =>
      "Αυτό το αρχείο υπερβαίνει το μέγιστο επιτρεπόμενο μέγεθος.";

  static String m13(max) => "Η τιμή πρέπει να είναι μικρότερη ή ίση με ${max}.";

  static String m14(maxLength) =>
      "Η τιμή πρέπει να έχει μήκος μικρότερο ή ίσο με ${maxLength}.";

  static String m15(maxWordsCount) =>
      "Η τιμή πρέπει να έχει έναν αριθμό λέξεων μικρότερο ή ίσο με ${maxWordsCount}.";

  static String m16(min) =>
      "Η τιμή πρέπει να είναι μεγαλύτερη ή ίση με ${min}.";

  static String m17(minLength) =>
      "Η τιμή πρέπει να έχει μήκος μεγαλύτερο ή ίσο με ${minLength}.";

  static String m18(minWordsCount) =>
      "Η τιμή πρέπει να έχει έναν αριθμό λέξεων μεγαλύτερο ή ίσο με ${minWordsCount}.";

  static String m19(value) => "Η τιμή δεν πρέπει να είναι ίση με ${value}.";

  static String m20(min, max) =>
      "Η τιμή πρέπει να είναι έγκυρος αριθμός θύρας.";

  static String m21(value) => "Η τιμή πρέπει να ξεκινά με ${value}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alphabeticalErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να περιέχει μόνο γράμματα.",
    ),
    "base64ErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρη ακολουθία Base64.",
    ),
    "betweenErrorText": m0,
    "bicErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρος BIC.",
    ),
    "cityErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ένα έγκυρο όνομα πόλης.",
    ),
    "colorCodeErrorText": m1,
    "containsElementErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι στη λίστα των επιτρεπόμενων τιμών.",
    ),
    "containsErrorText": m2,
    "containsLowercaseCharErrorText": m3,
    "containsNumberErrorText": m4,
    "containsSpecialCharErrorText": m5,
    "containsUppercaseCharErrorText": m6,
    "countryErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι μια έγκυρη χώρα.",
    ),
    "creditCardCVCErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρος κωδικός CVC της πιστωτικής κάρτας.",
    ),
    "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρη πιστωτική κάρτα.",
    ),
    "creditCardExpirationDateErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρη ημερομηνία λήξης της πιστωτικής κάρτας.",
    ),
    "creditCardExpiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Η πιστωτική κάρτα έχει λήξει.",
    ),
    "dateMustBeInTheFutureErrorText": MessageLookupByLibrary.simpleMessage(
      "Η ημερομηνία πρέπει να είναι στο μέλλον.",
    ),
    "dateMustBeInThePastErrorText": MessageLookupByLibrary.simpleMessage(
      "Η ημερομηνία πρέπει να είναι στο παρελθόν.",
    ),
    "dateRangeErrorText": m7,
    "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρη ημερομηνία.",
    ),
    "dunsErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ένας έγκυρος αριθμός DUNS.",
    ),
    "emailErrorText": MessageLookupByLibrary.simpleMessage(
      "Το πεδίο πρέπει να έχει μία έγκυρη διεύθυνση email.",
    ),
    "endsWithErrorText": m8,
    "equalErrorText": m9,
    "equalLengthErrorText": m10,
    "evenNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ζυγός αριθμός.",
    ),
    "fileExtensionErrorText": m11,
    "fileNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρο όνομα αρχείου.",
    ),
    "fileSizeErrorText": m12,
    "firstNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ένα έγκυρο όνομα.",
    ),
    "floatErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρος δεκαδικός αριθμός κινητής υποδιαστολής.",
    ),
    "hexadecimalErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρος δεκαεξαδικός αριθμός.",
    ),
    "ibanErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρο IBAN.",
    ),
    "integerErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ακέραιος αριθμός.",
    ),
    "invalidMimeTypeErrorText": MessageLookupByLibrary.simpleMessage(
      "Μη έγκυρος τύπος MIME.",
    ),
    "ipErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρη διεύθυνση IP.",
    ),
    "isbnErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρο ISBN.",
    ),
    "jsonErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρο JSON.",
    ),
    "languageCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ένας έγκυρος κωδικός γλώσσας.",
    ),
    "lastNameErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ένα έγκυρο επώνυμο.",
    ),
    "latitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρο γεωγραφικό πλάτος.",
    ),
    "licensePlateErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι μια έγκυρη πινακίδα κυκλοφορίας.",
    ),
    "longitudeErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρο γεωγραφικό μήκος.",
    ),
    "lowercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι με μικρά γράμματα.",
    ),
    "macAddressErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρη διεύθυνση MAC.",
    ),
    "matchErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή δεν ταιριάζει με το μοτίβο.",
    ),
    "maxErrorText": m13,
    "maxLengthErrorText": m14,
    "maxWordsCountErrorText": m15,
    "minErrorText": m16,
    "minLengthErrorText": m17,
    "minWordsCountErrorText": m18,
    "mustBeFalseErrorText": MessageLookupByLibrary.simpleMessage(
      "Αυτό το πεδίο πρέπει να είναι ψευδές.",
    ),
    "mustBeTrueErrorText": MessageLookupByLibrary.simpleMessage(
      "Αυτό το πεδίο πρέπει να είναι αληθές.",
    ),
    "negativeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι αρνητικός αριθμός.",
    ),
    "notEqualErrorText": m19,
    "notZeroNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή δεν πρέπει να είναι μηδέν.",
    ),
    "numericErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι αριθμητική.",
    ),
    "oddNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι περιττός αριθμός.",
    ),
    "passportNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ένας έγκυρος αριθμός διαβατηρίου.",
    ),
    "pathErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρη διαδρομή.",
    ),
    "phoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρος αριθμός τηλεφώνου.",
    ),
    "portNumberErrorText": m20,
    "positiveNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι θετικός αριθμός.",
    ),
    "primeNumberErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ένας πρώτος αριθμός.",
    ),
    "requiredErrorText": MessageLookupByLibrary.simpleMessage(
      "Το πεδίο δεν μπορεί να είναι κενό.",
    ),
    "singleLineErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι μία γραμμή.",
    ),
    "ssnErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρος Αριθμός Κοινωνικής Ασφάλισης.",
    ),
    "startsWithErrorText": m21,
    "stateErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι μια έγκυρη πολιτεία.",
    ),
    "streetErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ένα έγκυρο όνομα οδού.",
    ),
    "timeErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρη ώρα.",
    ),
    "timezoneErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι μια έγκυρη ζώνη ώρας.",
    ),
    "uniqueErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι μοναδική.",
    ),
    "uppercaseErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι με κεφαλαία γράμματα.",
    ),
    "urlErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρη διεύθυνση URL.",
    ),
    "usernameCannotContainDashesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Το όνομα χρήστη δεν μπορεί να περιέχει παύλες.",
        ),
    "usernameCannotContainDotsErrorText": MessageLookupByLibrary.simpleMessage(
      "Το όνομα χρήστη δεν μπορεί να περιέχει τελείες.",
    ),
    "usernameCannotContainNumbersErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Το όνομα χρήστη δεν μπορεί να περιέχει αριθμούς.",
        ),
    "usernameCannotContainSpacesErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Το όνομα χρήστη δεν μπορεί να περιέχει κενά.",
        ),
    "usernameCannotContainSpecialCharErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Το όνομα χρήστη δεν μπορεί να περιέχει ειδικούς χαρακτήρες.",
        ),
    "usernameCannotContainUnderscoreErrorText":
        MessageLookupByLibrary.simpleMessage(
          "Το όνομα χρήστη δεν μπορεί να περιέχει κάτω παύλα.",
        ),
    "usernameErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ένα έγκυρο όνομα χρήστη.",
    ),
    "uuidErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρο UUID.",
    ),
    "vinErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι ένας έγκυρος αριθμός VIN.",
    ),
    "zipCodeErrorText": MessageLookupByLibrary.simpleMessage(
      "Η τιμή πρέπει να είναι έγκυρος ταχυδρομικός κωδικός.",
    ),
  };
}
