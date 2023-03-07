import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/data/config/api_service/api_service.dart';

class ApiServiceImp extends ApiService {
  final dio = KiwiContainer().resolve<Dio>();
  @override
  Future<Response> get(String path) async {
    return await dio.get(path);
  }
}
