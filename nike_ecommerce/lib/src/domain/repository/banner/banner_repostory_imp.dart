import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/data/api/banner/banner_api_imp.dart';
import 'package:nike_ecommerce/src/domain/model/banner/banner.dart';
import 'package:nike_ecommerce/src/domain/repository/banner/banner_repository.dart';

class BannerRepositoryImp extends BannerRepository {
  @override
  Future<List<BannerEntity>> getAllBanner() async {
    final getResponse =
        await KiwiContainer().resolve<BannerApiImp>().getBannerResponse();
    final List<BannerEntity> bannersList = [];
    (getResponse.data as List<dynamic>).forEach((element) {
      bannersList.add(BannerEntity.fromJson(element));
    });
    return bannersList;
  }
}
