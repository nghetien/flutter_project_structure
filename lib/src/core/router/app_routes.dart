enum AppRoutes {
  root('/'),
  home('/home'),
  profile('/profile'),
  profileDetail('detail'),
  signIn('/sign-in');

  final String path;

  const AppRoutes(this.path);
}
