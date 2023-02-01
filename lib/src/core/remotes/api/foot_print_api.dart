import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'dio_config/dio_config.dart';

part 'foot_print_api.g.dart';

@RestApi()
abstract class FootPrintApi {
  static FootPrintApi get call => _FootPrintApi(DioManager.mainDio);

  @GET("/api/tracking")
  Future trackingData();
}
