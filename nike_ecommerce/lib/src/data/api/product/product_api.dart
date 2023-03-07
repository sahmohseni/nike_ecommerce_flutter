import 'package:nike_ecommerce/src/data/config/base_api.dart';
import 'package:nike_ecommerce/src/domain/model/api_response/api_response.dart';

abstract class ProductApi extends BaseApi {
  Future<ApiResponse> getProductResponse(int sortBy);
  Future<ApiResponse> getSearchResponse(String searchTerm);
}
