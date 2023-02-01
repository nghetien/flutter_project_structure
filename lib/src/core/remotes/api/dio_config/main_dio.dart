import 'package:dio/dio.dart';
import 'package:flutter_project_structure/runner/runner.dart';

import 'dio_config.dart';

class MainDio extends DioConfig {
  @override
  Dio get getDio {
    final String baseUrl = AppMode().appMode.baseUrl;

    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      headers: customHeaders(),
      connectTimeout: 30000,
      receiveTimeout: 30000,
    );

    Dio dio = Dio(options);

    dio.interceptors.add(customInterceptor());

    return dio;
  }

  @override
  Map<String, String> customHeaders() => {};

  @override
  Interceptor customInterceptor() => Interceptor();
}
