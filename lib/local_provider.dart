import 'package:flutter/material.dart';
import 'package:rokapp/l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = Locale('en'); // default locale

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return; // make sure the locale is supported
    _locale = locale;
    notifyListeners(); // notifies widgets to rebuild when locale changes
  }

  void clearLocale() {
    _locale = Locale('en'); // Reset to default
    notifyListeners();
  }
}
