import 'package:nike_ecommerce/src/data/config/base_api.dart';
import 'package:nike_ecommerce/src/domain/model/api_response/api_response.dart';

abstract class BannerApi extends BaseApi {
  Future<ApiResponse> getBannerResponse();
}
