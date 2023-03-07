import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kiwi/kiwi.dart';
import 'package:meta/meta.dart';
import 'package:nike_ecommerce/src/data/api/product/product_api_imp.dart';
import 'package:nike_ecommerce/src/domain/model/banner/banner.dart';
import 'package:nike_ecommerce/src/domain/model/product/product.dart';
import 'package:nike_ecommerce/src/domain/repository/banner/banner_repostory_imp.dart';
import 'package:nike_ecommerce/src/domain/repository/product/product_repository_imp.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProductRepositoryImp productRepositoryImp;
  final BannerRepositoryImp bannerRepositoryImp;
  HomeBloc(
      {required this.productRepositoryImp, required this.bannerRepositoryImp})
      : super(HomeLoading()) {
    on<HomeEvent>((event, emit) async {
      try {
        emit(HomeLoading());

        emit(HomeSuccess(
            lowPriceProduct: await productRepositoryImp.getAllProduct(3),
            highPriceProduct: await productRepositoryImp.getAllProduct(2),
            banners: await bannerRepositoryImp.getAllBanner(),
            latestProduct: await productRepositoryImp.getAllProduct(0),
            popularestProduct: await productRepositoryImp.getAllProduct(1)));
      } catch (e) {
        emit(HomeError(errorMessage: e.toString()));
      }
    });
  }
}
