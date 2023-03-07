import 'package:dio/dio.dart';

class ApiResponse<T> {
  T? data;
  late int statusCode;
  ApiResponse({required this.data, required this.statusCode});

  ApiResponse.fromResponse({required Response response}) {
    statusCode = response.statusCode!;
    data = isSuccess ? response.data : null;
  }

  bool get isSuccess {
    return statusCode >= 200 && statusCode <= 299;
  }
}
