import 'package:go_router/go_router.dart';

import '../di/di.dart';
import 'app_routes.dart';

abstract class AppRouter {
  static AppRouter get to => AppInjector.injector<AppRouter>();

  GoRouter get router;
}
