import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kiwi/kiwi.dart';
import 'package:meta/meta.dart';
import 'package:nike_ecommerce/src/domain/model/comment/comment.dart';
import 'package:nike_ecommerce/src/domain/repository/comment/comment_repository_imp.dart';

part 'comment_list_event.dart';
part 'comment_list_state.dart';

class CommentListBloc extends Bloc<CommentListEvent, CommentListState> {
  final int productId;
  CommentListBloc({required this.productId}) : super(CommentListLoading()) {
    on<CommentListEvent>((event, emit) async {
      try {
        emit(CommentListLoading());

        emit(CommentListSuccess(
            comments: await KiwiContainer()
                .resolve<CommentRepositoryImp>()
                .getAllComment(productId)));
      } catch (e) {
        emit(CommentListError(errorMessage: 'کامنت ها دریافت نشد'));
      }
    });
  }
}
