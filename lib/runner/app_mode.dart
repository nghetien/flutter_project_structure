import 'load_env.dart';

enum Flavor {
  dev,
  stage,
  product,
}

class FlavorMode {
  const FlavorMode({
    required this.flavor,
    required this.baseUrl,
    this.services = const {},
  });

  final Flavor flavor;
  final String baseUrl;
  final Map<String, String> services;

  static FlavorMode get dev => FlavorMode(
        flavor: Flavor.dev,
        baseUrl: LoadEnv.get(key: 'API_URL_DEV'),
        services: {
          'footPrint': LoadEnv.get(key: 'FOOT_PRINT_URL_DEV'),
        },
      );

  static FlavorMode get stage => FlavorMode(
        flavor: Flavor.stage,
        baseUrl: LoadEnv.get(key: 'API_URL_STAGE'),
        services: {
          'footPrint': LoadEnv.get(key: 'FOOT_PRINT_URL_STAGE'),
        },
      );

  static FlavorMode get product => FlavorMode(
        flavor: Flavor.dev,
        baseUrl: LoadEnv.get(key: 'API_URL'),
        services: {
          'footPrint': LoadEnv.get(key: 'FOOT_PRINT_URL'),
        },
      );
}

class AppMode {
  AppMode._privateConstructor();

  static final AppMode _instance = AppMode._privateConstructor();

  factory AppMode() => _instance;

  FlavorMode _appMode = FlavorMode.product;

  FlavorMode get appMode => _appMode;

  void setAppMode(FlavorMode value) => _appMode = value;
}
