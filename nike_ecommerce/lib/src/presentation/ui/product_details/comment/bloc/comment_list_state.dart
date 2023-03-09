part of 'comment_list_bloc.dart';

@immutable
abstract class CommentListState extends Equatable {
  const CommentListState();
  @override
  List<Object> get props => [];
}

class CommentListLoading extends CommentListState {}

class CommentListSuccess extends CommentListState {
  final List<CommentEntity> comments;
  const CommentListSuccess({required this.comments});
}

class CommentListError extends CommentListState {
  final String errorMessage;
  const CommentListError({required this.errorMessage});
}
