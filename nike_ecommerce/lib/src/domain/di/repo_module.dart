import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/domain/repository/product/product_repository.dart';
import 'package:nike_ecommerce/src/domain/repository/product/product_repository_imp.dart';

void repoInjector() {
  KiwiContainer().registerFactory<ProductRepositoryImp>(
      (container) => ProductRepositoryImp());
}
