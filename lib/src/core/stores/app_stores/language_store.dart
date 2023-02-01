import 'package:flutter/material.dart';

import '../../di/di.dart';

abstract class LanguageStore extends ChangeNotifier {
  static LanguageStore get to => AppInjector.injector<LanguageStore>();

  static const List<Locale> locales = [
    Locale('en', 'US'),
    Locale('vi', 'VN'),
  ];

  Locale get currentLocale;

  void setCurrentLocale(Locale locale);
}
