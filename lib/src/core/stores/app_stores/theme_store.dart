import 'package:basic_flutter_theme/basic_flutter_theme.dart';
import 'package:flutter/material.dart';

import '../../di/di.dart';

enum AppThemeMode {
  light,
  dark,
}

abstract class ThemeStore extends ChangeNotifier {
  static ThemeStore get to => AppInjector.injector<ThemeStore>();

  static final Map<AppThemeMode, ThemeData> themes = {
    AppThemeMode.light: BasicAppThemes.lightTheme,
    AppThemeMode.dark: BasicAppThemes.darkTheme,
  };

  ThemeData get currentTheme;

  AppThemeMode get currentThemeMode;

  void setCurrentTheme(AppThemeMode appThemeMode);
}
