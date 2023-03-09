import 'package:nike_ecommerce/src/domain/model/comment/comment.dart';

abstract class CommentRepository {
  Future<List<CommentEntity>> getAllComment(int productId);
}
