import 'package:dio/dio.dart';

import 'foot_print_dio.dart';
import 'main_dio.dart';

abstract class DioConfig {
  Dio get getDio;

  Map<String, String> customHeaders();

  Interceptor customInterceptor();
}

class DioManager {
  const DioManager._();

  static Dio get mainDio => MainDio().getDio;

  static Dio get footPrintDio => FootPrintDio().getDio;
}
