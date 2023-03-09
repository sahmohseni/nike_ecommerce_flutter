part of 'comment_list_bloc.dart';

@immutable
abstract class CommentListEvent extends Equatable {
  const CommentListEvent();

  @override
  List<Object> get props => [];
}

class CommentListStart extends CommentListEvent {}

class CommentListRefresh extends CommentListEvent {}
