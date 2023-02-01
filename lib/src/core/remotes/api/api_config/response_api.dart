import 'package:json_annotation/json_annotation.dart';

import 'api_code.dart';

part 'response_api.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class ResponseApi<DataType, ErrorType> {
  int statusCode;
  String message;
  ErrorType? error;
  DataType? data;

  ResponseApi({
    this.statusCode = ApiCode.defaultCode,
    this.message = '',
    this.data,
    this.error,
  });

  factory ResponseApi.fromJson(
    Map<String, dynamic> json,
    DataType Function(Object? json) fromJsonDataType,
    ErrorType Function(Object? json) fromJsonErrorType,
  ) =>
      _$ResponseApiFromJson<DataType, ErrorType>(
        json,
        fromJsonDataType,
        fromJsonErrorType,
      );

  Map<String, dynamic> toJson(
    Object? Function(DataType value) toJsonDataType,
    Object? Function(ErrorType value) toJsonErrorType,
  ) =>
      _$ResponseApiToJson<DataType, ErrorType>(
        this,
        toJsonDataType,
        toJsonErrorType,
      );
}
