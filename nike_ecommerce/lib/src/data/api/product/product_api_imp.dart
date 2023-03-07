import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/data/api/product/product_api.dart';
import 'package:nike_ecommerce/src/data/config/api_service/api_service.dart';
import 'package:nike_ecommerce/src/domain/model/api_response/api_response.dart';

class ProductApiImp extends ProductApi {
  @override
  Future<ApiResponse> getProductResponse(int sortBy) async {
    final respone = await KiwiContainer()
        .resolve<ApiService>()
        .get('http://expertdevelopers.ir/api/v1/product/list?sort=$sortBy');
    return ApiResponse.fromResponse(response: respone);
  }

  @override
  Future<ApiResponse> getSearchResponse(String searchTerm) async {
    final response = await KiwiContainer()
        .resolve<ApiService>()
        .get('http://expertdevelopers.ir/api/v1/product/search?q=$searchTerm');
    return ApiResponse.fromResponse(response: response);
  }
}
