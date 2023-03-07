import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/data/api/banner/banner_api_imp.dart';
import 'package:nike_ecommerce/src/data/api/product/product_api.dart';
import 'package:nike_ecommerce/src/data/api/product/product_api_imp.dart';
import 'package:nike_ecommerce/src/data/config/api_service/api_service.dart';
import 'package:nike_ecommerce/src/data/config/api_service/api_service_imp.dart';
import 'package:nike_ecommerce/src/domain/repository/banner/banner_repostory_imp.dart';

void apiInjector() {
  KiwiContainer().registerSingleton<ApiService>((container) => ApiServiceImp());
  KiwiContainer()
      .registerSingleton<ProductApiImp>((container) => ProductApiImp());
  KiwiContainer()
      .registerSingleton<BannerApiImp>((container) => BannerApiImp());
  KiwiContainer()
      .registerFactory<ApiServiceImp>((container) => ApiServiceImp());
}
