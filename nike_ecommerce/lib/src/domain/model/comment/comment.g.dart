// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentEntity _$$_CommentEntityFromJson(Map<String, dynamic> json) =>
    _$_CommentEntity(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      date: json['date'] as String,
      author: json['author']['email'] as String? ?? '',
    );

Map<String, dynamic> _$$_CommentEntityToJson(_$_CommentEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'date': instance.date,
      'author': instance.author,
    };
