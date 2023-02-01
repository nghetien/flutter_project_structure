import 'package:get_it/get_it.dart';

import 'router_di.dart';
import 'services_di.dart';
import 'stores_di.dart';
import 'usecases_di.dart';

class AppInjector {
  AppInjector._();

  static final injector = GetIt.instance;

  static Future<void> initializeDependencies() async {
    await RouterDI.init(injector);
    await StoresDI.init(injector);
    await ServicesDI.init(injector);
    await UseCasesDI.init(injector);
  }
}
