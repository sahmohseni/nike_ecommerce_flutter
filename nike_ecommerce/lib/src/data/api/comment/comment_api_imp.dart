import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/data/api/comment/comment_api.dart';
import 'package:nike_ecommerce/src/data/config/api_service/api_service_imp.dart';
import 'package:nike_ecommerce/src/domain/model/api_response/api_response.dart';

class CommentApiImp extends CommentApi {
  @override
  Future<ApiResponse> getCommentResponse(int productId) async {
    final getResponse = await KiwiContainer().resolve<ApiServiceImp>().get(
        'http://expertdevelopers.ir/api/v1/comment/list?product_id=$productId');
    return ApiResponse.fromResponse(response: getResponse);
  }
}
