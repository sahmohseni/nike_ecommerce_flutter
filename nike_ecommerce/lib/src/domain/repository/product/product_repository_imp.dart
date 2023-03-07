import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/data/api/product/product_api.dart';
import 'package:nike_ecommerce/src/data/api/product/product_api_imp.dart';
import 'package:nike_ecommerce/src/domain/model/api_response/api_response.dart';
import 'package:nike_ecommerce/src/domain/model/product/product.dart';
import 'package:nike_ecommerce/src/domain/repository/product/product_repository.dart';

class ProductRepositoryImp extends ProductRepository {
  @override
  Future<List<ProductEntity>> getAllProduct(int sortBy) async {
    final response = await KiwiContainer()
        .resolve<ProductApiImp>()
        .getProductResponse(sortBy);
    final List<ProductEntity> products = [];
    (response.data as List<dynamic>).forEach((element) {
      products.add(ProductEntity.fromJson(element));
    });
    return products;
  }

  @override
  Future<List<ProductEntity>> getSearchProduct(String searchTerm) async {
    final response = await KiwiContainer()
        .resolve<ProductApiImp>()
        .getSearchResponse(searchTerm);
    final List<ProductEntity> searchProducts = [];
    (response.data as List<dynamic>).forEach((element) {
      searchProducts.add(ProductEntity.fromJson(element));
    });
    return searchProducts;
  }
}
