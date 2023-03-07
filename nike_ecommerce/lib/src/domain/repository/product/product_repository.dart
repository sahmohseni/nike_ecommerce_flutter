import 'package:dio/dio.dart';
import 'package:nike_ecommerce/src/data/api/product/product_api.dart';
import 'package:nike_ecommerce/src/domain/model/api_response/api_response.dart';
import 'package:nike_ecommerce/src/domain/model/product/product.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getAllProduct(int sortBy);
  Future<List<ProductEntity>> getSearchProduct(String searchTerm);
}
