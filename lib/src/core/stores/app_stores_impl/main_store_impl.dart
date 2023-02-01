import 'package:flutter_project_structure/src/app/app.dart';

import '../app_stores/main_stores.dart';

class MainStoreImpl extends MainStore {
  User _currentUser = User.empty();
  String _accessToken = '';

  @override
  User get currentUser => _currentUser;

  @override
  bool get userIsEmpty => _currentUser.isEmpty;

  @override
  String get accessToken => _accessToken;

  @override
  void setAccessToken(String token) {
    _accessToken = token;
    notifyListeners();
  }

  @override
  void setCurrentUser(User user) {
    _currentUser = user;
    notifyListeners();
  }

  @override
  void updateCurrentUser({
    String? name,
    String? phone,
    String? avatar,
  }) {
    _currentUser.update(
      name: name,
      phone: phone,
      avatar: avatar,
    );
    notifyListeners();
  }
}
