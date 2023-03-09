import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/data/api/comment/comment_api_imp.dart';
import 'package:nike_ecommerce/src/domain/model/comment/comment.dart';
import 'package:nike_ecommerce/src/domain/repository/comment/comment_repository.dart';

class CommentRepositoryImp extends CommentRepository {
  @override
  Future<List<CommentEntity>> getAllComment(int productId) async {
    final commentResponse = await KiwiContainer()
        .resolve<CommentApiImp>()
        .getCommentResponse(productId);
    final List<CommentEntity> commentList = [];
    (commentResponse.data as List<dynamic>).forEach((element) {
      commentList.add(CommentEntity.fromJson(element));
    });
    return commentList;
  }
}
