import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'comment_list_event.dart';
part 'comment_list_state.dart';

class CommentListBloc extends Bloc<CommentListEvent, CommentListState> {
  CommentListBloc() : super(CommentListLoding()) {
    on<CommentListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
