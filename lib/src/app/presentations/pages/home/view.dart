import 'package:basic_flutter_theme/basic_flutter_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/core.dart';
import '../../../../core/l10n/generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            '${S.current.home} Page',
            style: BasicTextStyles.headline,
          ),
          ElevatedButton(
            onPressed: () {
              context.go(AppRoutes.profile.path);
            },
            child: const Text('Go to Profile Page'),
          ),
          ElevatedButton(
            onPressed: () {
              ThemeStore.to.setCurrentTheme(AppThemeMode.dark);
            },
            child: const Text('Change Theme dark'),
          ),
          ElevatedButton(
            onPressed: () {
              ThemeStore.to.setCurrentTheme(AppThemeMode.light);
            },
            child: const Text('Change Theme light'),
          ),
          ElevatedButton(
            onPressed: () {
              MainStore.to.setAccessToken('123456789');
            },
            child: const Text('Change AccessToken'),
          ),
          ElevatedButton(
            onPressed: () {
              MainStore.to.setAccessToken('');
            },
            child: const Text('Clear AccessToken'),
          ),
        ],
      ),
    );
  }
}
