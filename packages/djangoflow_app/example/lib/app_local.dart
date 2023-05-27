import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale? locale;

  AppLocalizations({this.locale});

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalDelegate();
  static const String _path = 'assets/lang/';

  late Map<String, String> _localStrings;

  Future loadJsonFiles() async {
    String enocedString =
        await rootBundle.loadString("$_path${locale!.languageCode}.json");
    Map<String, dynamic> jsonMap = jsonDecode(enocedString);
    _localStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  String translate(String key) {
    return _localStrings[key] ?? '';
  }
}

class _AppLocalDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations appLocal = AppLocalizations(locale: locale);
    await appLocal.loadJsonFiles();
    return appLocal;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<dynamic> old) {
    return false;
  }
}

extension TranslateString on String {
  String tr(BuildContext context) {
    return AppLocalizations.of(context)!.translate(this);
  }
}
