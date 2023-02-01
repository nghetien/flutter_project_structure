import 'package:basic_flutter_theme/basic_flutter_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_structure/src/app/app.dart';
import 'package:go_router/go_router.dart';

import '../constants/constants.dart';
import '../utils/utils.dart';
import 'app_router.dart';
import 'app_routes.dart';

class AppRouterImpl extends AppRouter {
  @override
  GoRouter get router => _router;

  final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: AppRoutes.root.path,
    redirect: (context, state) {
      /// TODO handle redirect
      return null;
    },
    routes: [
      ShellRoute(
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return RootPage(
            key: AppKeys.getAppRouteKey(AppRoutes.root).valueKey,
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.root.path,
            name: AppRoutes.root.name,
            builder: (_, __) => const HomePage(),
          ),
          GoRoute(
            path: AppRoutes.home.path,
            name: AppRoutes.home.name,
            builder: (_, __) => const HomePage(),
          ),
          GoRoute(
            path: AppRoutes.profile.path,
            name: AppRoutes.profile.name,
            builder: (_, __) => const ProfilePage(),
            routes: [
              GoRoute(
                path: AppRoutes.profileDetail.path,
                name: AppRoutes.profileDetail.name,
                builder: (_, __) => const Text('Profile Detail'),
              ),
            ],
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) {
      /// TODO handle error when code in page error
      return MaterialPage<void>(
        child: Center(
          child: Text(
            'errorPageBuilder',
            style: BasicTextStyles.headline,
          ),
        ),
      );
    },
    errorBuilder: (context, state) {
      /// TODO handle others error
      return Center(
        child: Text(
          'errorBuilder',
          style: BasicTextStyles.headline,
        ),
      );
    },
  );
}
