import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity(
      {required int id,
      required String title,
      required int price,
      required int discount,
      required int previous_price,
      required String image}) = _ProductEntity;
  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
