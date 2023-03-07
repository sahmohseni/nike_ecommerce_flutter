import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/data/api/product/product_api.dart';
import 'package:nike_ecommerce/src/data/api/product/product_api_imp.dart';
import 'package:nike_ecommerce/src/data/config/api_service/api_service.dart';
import 'package:nike_ecommerce/src/data/config/api_service/api_service_imp.dart';

void apiInjector() {
  KiwiContainer().registerFactory<ApiService>((container) => ApiServiceImp());
  KiwiContainer()
      .registerFactory<ProductApiImp>((container) => ProductApiImp());
}
