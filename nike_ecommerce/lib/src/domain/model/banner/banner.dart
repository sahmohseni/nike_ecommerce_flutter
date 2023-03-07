import 'package:freezed_annotation/freezed_annotation.dart';
part 'banner.freezed.dart';
part 'banner.g.dart';

@freezed
class BannerEntity with _$BannerEntity {
  const factory BannerEntity({required int id, required String image}) =
      _BannerEntity;
  factory BannerEntity.fromJson(Map<String, dynamic> json) =>
      _$BannerEntityFromJson(json);
}
