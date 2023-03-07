import 'package:nike_ecommerce/src/domain/model/banner/banner.dart';

abstract class BannerRepository {
  Future<List<BannerEntity>> getAllBanner();
}
