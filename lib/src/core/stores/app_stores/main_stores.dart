import 'package:flutter/material.dart';
import 'package:flutter_project_structure/src/app/app.dart';

import '../../di/di.dart';

abstract class MainStore extends ChangeNotifier {
  static MainStore get to => AppInjector.injector<MainStore>();

  User get currentUser;

  bool get userIsEmpty;

  String get accessToken;

  bool get isLogin => accessToken.isNotEmpty;

  void setAccessToken(String token);

  void setCurrentUser(User user);

  void updateCurrentUser({
    String? name,
    String? phone,
    String? avatar,
  });
}
