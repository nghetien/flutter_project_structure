import 'package:get_it/get_it.dart';

import '../stores/stores.dart';

class StoresDI {
  const StoresDI._();

  static Future init(GetIt injector) async {
    injector.registerSingleton<MainStore>(MainStoreImpl());
    injector.registerSingleton<LanguageStore>(LanguageStoreImpl());
    injector.registerSingleton<ThemeStore>(ThemeStoreImpl());
  }
}
