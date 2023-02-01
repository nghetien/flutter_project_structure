import 'package:get_it/get_it.dart';

import '../services/services.dart';

class ServicesDI {
  const ServicesDI._();

  static Future init(GetIt injector) async {
    injector.registerLazySingleton<AppStream>(AppStreamImpl.init);
  }
}
