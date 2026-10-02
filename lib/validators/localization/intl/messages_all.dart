// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:implementation_imports, file_names, unnecessary_new
// ignore_for_file:unnecessary_brace_in_string_interps, directives_ordering
// ignore_for_file:argument_type_not_assignable, invalid_assignment
// ignore_for_file:prefer_single_quotes, prefer_generic_function_type_aliases
// ignore_for_file:comment_references

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'messages_ar.dart' as messages_ar;
import 'messages_bg.dart' as messages_bg;
import 'messages_bn.dart' as messages_bn;
import 'messages_bs.dart' as messages_bs;
import 'messages_ca.dart' as messages_ca;
import 'messages_cs.dart' as messages_cs;
import 'messages_da.dart' as messages_da;
import 'messages_de.dart' as messages_de;
import 'messages_el.dart' as messages_el;
import 'messages_en.dart' as messages_en;
import 'messages_es.dart' as messages_es;
import 'messages_et.dart' as messages_et;
import 'messages_fa.dart' as messages_fa;
import 'messages_fi.dart' as messages_fi;
import 'messages_fr.dart' as messages_fr;
import 'messages_he.dart' as messages_he;
import 'messages_hi.dart' as messages_hi;
import 'messages_hr.dart' as messages_hr;
import 'messages_hu.dart' as messages_hu;
import 'messages_id.dart' as messages_id;
import 'messages_it.dart' as messages_it;
import 'messages_ja.dart' as messages_ja;
import 'messages_ka.dart' as messages_ka;
import 'messages_km.dart' as messages_km;
import 'messages_ko.dart' as messages_ko;
import 'messages_ku.dart' as messages_ku;
import 'messages_lo.dart' as messages_lo;
import 'messages_lv.dart' as messages_lv;
import 'messages_mn.dart' as messages_mn;
import 'messages_ms.dart' as messages_ms;
import 'messages_ne.dart' as messages_ne;
import 'messages_nl.dart' as messages_nl;
import 'messages_no.dart' as messages_no;
import 'messages_pl.dart' as messages_pl;
import 'messages_pt.dart' as messages_pt;
import 'messages_rm.dart' as messages_rm;
import 'messages_ro.dart' as messages_ro;
import 'messages_ru.dart' as messages_ru;
import 'messages_sk.dart' as messages_sk;
import 'messages_sl.dart' as messages_sl;
import 'messages_sq.dart' as messages_sq;
import 'messages_sv.dart' as messages_sv;
import 'messages_sw.dart' as messages_sw;
import 'messages_ta.dart' as messages_ta;
import 'messages_th.dart' as messages_th;
import 'messages_tr.dart' as messages_tr;
import 'messages_uk.dart' as messages_uk;
import 'messages_vi.dart' as messages_vi;
import 'messages_zh.dart' as messages_zh;
import 'messages_zh_Hant.dart' as messages_zh_hant;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'ar': () => new SynchronousFuture(null),
  'bg': () => new SynchronousFuture(null),
  'bn': () => new SynchronousFuture(null),
  'bs': () => new SynchronousFuture(null),
  'ca': () => new SynchronousFuture(null),
  'cs': () => new SynchronousFuture(null),
  'da': () => new SynchronousFuture(null),
  'de': () => new SynchronousFuture(null),
  'el': () => new SynchronousFuture(null),
  'en': () => new SynchronousFuture(null),
  'es': () => new SynchronousFuture(null),
  'et': () => new SynchronousFuture(null),
  'fa': () => new SynchronousFuture(null),
  'fi': () => new SynchronousFuture(null),
  'fr': () => new SynchronousFuture(null),
  'he': () => new SynchronousFuture(null),
  'hi': () => new SynchronousFuture(null),
  'hr': () => new SynchronousFuture(null),
  'hu': () => new SynchronousFuture(null),
  'id': () => new SynchronousFuture(null),
  'it': () => new SynchronousFuture(null),
  'ja': () => new SynchronousFuture(null),
  'ka': () => new SynchronousFuture(null),
  'km': () => new SynchronousFuture(null),
  'ko': () => new SynchronousFuture(null),
  'ku': () => new SynchronousFuture(null),
  'lo': () => new SynchronousFuture(null),
  'lv': () => new SynchronousFuture(null),
  'mn': () => new SynchronousFuture(null),
  'ms': () => new SynchronousFuture(null),
  'ne': () => new SynchronousFuture(null),
  'nl': () => new SynchronousFuture(null),
  'no': () => new SynchronousFuture(null),
  'pl': () => new SynchronousFuture(null),
  'pt': () => new SynchronousFuture(null),
  'rm': () => new SynchronousFuture(null),
  'ro': () => new SynchronousFuture(null),
  'ru': () => new SynchronousFuture(null),
  'sk': () => new SynchronousFuture(null),
  'sl': () => new SynchronousFuture(null),
  'sq': () => new SynchronousFuture(null),
  'sv': () => new SynchronousFuture(null),
  'sw': () => new SynchronousFuture(null),
  'ta': () => new SynchronousFuture(null),
  'th': () => new SynchronousFuture(null),
  'tr': () => new SynchronousFuture(null),
  'uk': () => new SynchronousFuture(null),
  'vi': () => new SynchronousFuture(null),
  'zh': () => new SynchronousFuture(null),
  'zh_Hant': () => new SynchronousFuture(null),
};

MessageLookupByLibrary? _findExact(String localeName) {
  switch (localeName) {
    case 'ar':
      return messages_ar.messages;
    case 'bg':
      return messages_bg.messages;
    case 'bn':
      return messages_bn.messages;
    case 'bs':
      return messages_bs.messages;
    case 'ca':
      return messages_ca.messages;
    case 'cs':
      return messages_cs.messages;
    case 'da':
      return messages_da.messages;
    case 'de':
      return messages_de.messages;
    case 'el':
      return messages_el.messages;
    case 'en':
      return messages_en.messages;
    case 'es':
      return messages_es.messages;
    case 'et':
      return messages_et.messages;
    case 'fa':
      return messages_fa.messages;
    case 'fi':
      return messages_fi.messages;
    case 'fr':
      return messages_fr.messages;
    case 'he':
      return messages_he.messages;
    case 'hi':
      return messages_hi.messages;
    case 'hr':
      return messages_hr.messages;
    case 'hu':
      return messages_hu.messages;
    case 'id':
      return messages_id.messages;
    case 'it':
      return messages_it.messages;
    case 'ja':
      return messages_ja.messages;
    case 'ka':
      return messages_ka.messages;
    case 'km':
      return messages_km.messages;
    case 'ko':
      return messages_ko.messages;
    case 'ku':
      return messages_ku.messages;
    case 'lo':
      return messages_lo.messages;
    case 'lv':
      return messages_lv.messages;
    case 'mn':
      return messages_mn.messages;
    case 'ms':
      return messages_ms.messages;
    case 'ne':
      return messages_ne.messages;
    case 'nl':
      return messages_nl.messages;
    case 'no':
      return messages_no.messages;
    case 'pl':
      return messages_pl.messages;
    case 'pt':
      return messages_pt.messages;
    case 'rm':
      return messages_rm.messages;
    case 'ro':
      return messages_ro.messages;
    case 'ru':
      return messages_ru.messages;
    case 'sk':
      return messages_sk.messages;
    case 'sl':
      return messages_sl.messages;
    case 'sq':
      return messages_sq.messages;
    case 'sv':
      return messages_sv.messages;
    case 'sw':
      return messages_sw.messages;
    case 'ta':
      return messages_ta.messages;
    case 'th':
      return messages_th.messages;
    case 'tr':
      return messages_tr.messages;
    case 'uk':
      return messages_uk.messages;
    case 'vi':
      return messages_vi.messages;
    case 'zh':
      return messages_zh.messages;
    case 'zh_Hant':
      return messages_zh_hant.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) {
  var availableLocale = Intl.verifiedLocale(
    localeName,
    (locale) => _deferredLibraries[locale] != null,
    onFailure: (_) => null,
  );
  if (availableLocale == null) {
    return new SynchronousFuture(false);
  }
  var lib = _deferredLibraries[availableLocale];
  lib == null ? new SynchronousFuture(false) : lib();
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  return new SynchronousFuture(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary? _findGeneratedMessagesFor(String locale) {
  var actualLocale = Intl.verifiedLocale(
    locale,
    _messagesExistFor,
    onFailure: (_) => null,
  );
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
