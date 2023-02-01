import 'package:dio/dio.dart';
import 'package:flutter_project_structure/src/app/app.dart';
import 'package:retrofit/retrofit.dart';

import 'api_config/api_config.dart';
import 'dio_config/dio_config.dart';

part 'main_api.g.dart';

@RestApi()
abstract class MainApi {
  static MainApi get call => _MainApi(DioManager.mainDio);

  @GET("/api/getInfoUser")
  Future<ResponseApi<User, dynamic>> getInfoUser();
}
