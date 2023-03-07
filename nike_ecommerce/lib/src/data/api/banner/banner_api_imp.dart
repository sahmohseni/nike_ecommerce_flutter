import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/data/api/banner/banner_api.dart';
import 'package:nike_ecommerce/src/data/config/api_service/api_service_imp.dart';
import 'package:nike_ecommerce/src/domain/model/api_response/api_response.dart';

class BannerApiImp extends BannerApi {
  @override
  Future<ApiResponse> getBannerResponse() async {
    final response = await KiwiContainer()
        .resolve<ApiServiceImp>()
        .get('http://expertdevelopers.ir/api/v1/banner/slider');
    return ApiResponse.fromResponse(response: response);
  }
}
