import 'package:basic_flutter_theme/basic_flutter_theme.dart';
import 'package:flutter/material.dart';

import '../app_stores/app_stores.dart';

class ThemeStoreImpl extends ThemeStore {
  MapEntry<AppThemeMode, ThemeData> _currentTheme = ThemeStore.themes.entries.first;

  @override
  ThemeData get currentTheme => _currentTheme.value;

  @override
  AppThemeMode get currentThemeMode => _currentTheme.key;

  @override
  void setCurrentTheme(AppThemeMode appThemeMode) {
    print('vao day k');
    switch (appThemeMode) {
      case AppThemeMode.light:
        _currentTheme = MapEntry(AppThemeMode.light, BasicAppThemes.lightTheme);
        break;
      case AppThemeMode.dark:
        _currentTheme = MapEntry(AppThemeMode.dark, BasicAppThemes.darkTheme);
        break;
    }
    notifyListeners();
  }
}
