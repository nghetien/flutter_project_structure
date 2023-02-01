import 'dart:ui';

import '../app_stores/app_stores.dart';

class LanguageStoreImpl extends LanguageStore {
  Locale _locale = LanguageStore.locales[0];

  @override
  void setCurrentLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  @override
  Locale get currentLocale => _locale;
}
