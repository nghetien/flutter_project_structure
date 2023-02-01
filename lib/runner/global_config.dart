import 'package:basic_flutter_theme/basic_flutter_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_structure/src/core/core.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:timezone/data/latest.dart' as tz;

import 'app_mode.dart';
import 'load_env.dart';

class GlobalConfig {
  const GlobalConfig._();

  static final GlobalKey<ScaffoldMessengerState> snackBarKey = GlobalKey<ScaffoldMessengerState>();

  static Future initApp({
    FlavorMode? flavorMode,
  }) async {
    _systemUI();
    await _config(flavorMode: flavorMode);
    await _appInjection();
  }

  static Future _config({
    FlavorMode? flavorMode,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();
    usePathUrlStrategy();

    await LoadEnv.init();
    if (flavorMode != null) AppMode().setAppMode(flavorMode);
    BasicLoading.initLoading();

    tz.initializeTimeZones();
  }

  static Future _appInjection() async =>  AppInjector.initializeDependencies();

  static void _systemUI() {}
}
