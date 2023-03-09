import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/domain/repository/banner/banner_repostory_imp.dart';
import 'package:nike_ecommerce/src/domain/repository/comment/comment_repository_imp.dart';
import 'package:nike_ecommerce/src/domain/repository/product/product_repository.dart';
import 'package:nike_ecommerce/src/domain/repository/product/product_repository_imp.dart';

void repoInjector() {
  KiwiContainer().registerSingleton<ProductRepositoryImp>(
      (container) => ProductRepositoryImp());
  KiwiContainer().registerSingleton<BannerRepositoryImp>(
      (container) => BannerRepositoryImp());
  KiwiContainer().registerSingleton<CommentRepositoryImp>(
      (container) => CommentRepositoryImp());
}
