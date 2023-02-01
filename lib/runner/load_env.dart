import 'package:flutter_dotenv/flutter_dotenv.dart';

class LoadEnv {
  const LoadEnv._();

  static Future init() async => dotenv.load(fileName: '.env');

  static String get({
    required String key,
    String valueDefault = '',
  }) =>
      dotenv.get(key, fallback: valueDefault);
}
