import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workpiece_diametr/l10n/app_localizations.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('en');
  Locale get locale => _locale;

  Future<void> setLocale(Locale locale) async {
    if (!AppLocalizations.supportedLocales.contains(locale)) return;
    _locale = locale;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('locale', locale.languageCode);
  }

  Future<void> loadSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString('locale');
    if (saved != null) {
      _locale = Locale(saved);
      notifyListeners();
    } else {
      final deviceLocale = WidgetsBinding.instance.platformDispatcher.locale;
      final supportedCodes = AppLocalizations.supportedLocales.map((l) => l.languageCode);
      
      if (supportedCodes.contains(deviceLocale.languageCode)) {
        _locale = Locale(deviceLocale.languageCode);
      } else {
        _locale = const Locale('en');
      }
      notifyListeners();
    }
  }
}