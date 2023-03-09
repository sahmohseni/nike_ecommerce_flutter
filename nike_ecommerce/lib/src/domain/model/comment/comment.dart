import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class CommentEntity with _$CommentEntity {
  const factory CommentEntity(
      {required int id,
      required String title,
      required String content,
      required String date,
      @Default('') @JsonKey(name: 'author') String author}) = _CommentEntity;
  factory CommentEntity.fromJson(Map<String, dynamic> json) =>
      _$CommentEntityFromJson(json);
}
