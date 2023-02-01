import '../router/router.dart';

class AppKeys {
  static String getAppRouteKey(AppRoutes appRoute) => 'APP_ROUTE_KEY_${appRoute.name}';
}
