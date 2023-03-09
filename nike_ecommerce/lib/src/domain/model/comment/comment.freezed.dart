// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentEntity _$CommentEntityFromJson(Map<String, dynamic> json) {
  return _CommentEntity.fromJson(json);
}

/// @nodoc
mixin _$CommentEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentEntityCopyWith<CommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEntityCopyWith<$Res> {
  factory $CommentEntityCopyWith(
          CommentEntity value, $Res Function(CommentEntity) then) =
      _$CommentEntityCopyWithImpl<$Res, CommentEntity>;
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      String date,
      @JsonKey(name: 'author') String author});
}

/// @nodoc
class _$CommentEntityCopyWithImpl<$Res, $Val extends CommentEntity>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? date = null,
    Object? author = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentEntityCopyWith<$Res>
    implements $CommentEntityCopyWith<$Res> {
  factory _$$_CommentEntityCopyWith(
          _$_CommentEntity value, $Res Function(_$_CommentEntity) then) =
      __$$_CommentEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      String date,
      @JsonKey(name: 'author') String author});
}

/// @nodoc
class __$$_CommentEntityCopyWithImpl<$Res>
    extends _$CommentEntityCopyWithImpl<$Res, _$_CommentEntity>
    implements _$$_CommentEntityCopyWith<$Res> {
  __$$_CommentEntityCopyWithImpl(
      _$_CommentEntity _value, $Res Function(_$_CommentEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? date = null,
    Object? author = null,
  }) {
    return _then(_$_CommentEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentEntity implements _CommentEntity {
  const _$_CommentEntity(
      {required this.id,
      required this.title,
      required this.content,
      required this.date,
      @JsonKey(name: 'author') this.author = ''});

  factory _$_CommentEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CommentEntityFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String date;
  @override
  @JsonKey(name: 'author')
  final String author;

  @override
  String toString() {
    return 'CommentEntity(id: $id, title: $title, content: $content, date: $date, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, content, date, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentEntityCopyWith<_$_CommentEntity> get copyWith =>
      __$$_CommentEntityCopyWithImpl<_$_CommentEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentEntityToJson(
      this,
    );
  }
}

abstract class _CommentEntity implements CommentEntity {
  const factory _CommentEntity(
      {required final int id,
      required final String title,
      required final String content,
      required final String date,
      @JsonKey(name: 'author') final String author}) = _$_CommentEntity;

  factory _CommentEntity.fromJson(Map<String, dynamic> json) =
      _$_CommentEntity.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get date;
  @override
  @JsonKey(name: 'author')
  String get author;
  @override
  @JsonKey(ignore: true)
  _$$_CommentEntityCopyWith<_$_CommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
