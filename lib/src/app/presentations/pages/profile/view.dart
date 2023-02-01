import 'package:basic_flutter_theme/basic_flutter_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/core.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Profile Page',
            style: BasicTextStyles.headline,
          ),
          ElevatedButton(
            onPressed: () {
              context.go(AppRoutes.home.path);
            },
            child: const Text('Go to Home Page'),
          ),
        ],
      ),
    );
  }
}
