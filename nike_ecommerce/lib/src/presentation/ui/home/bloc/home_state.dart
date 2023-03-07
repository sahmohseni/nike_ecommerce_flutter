part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final List<ProductEntity> latestProduct;
  final List<ProductEntity> popularestProduct;
  final List<BannerEntity> banners;
  final List<ProductEntity> highPriceProduct;
  final List<ProductEntity> lowPriceProduct;
  const HomeSuccess(
      {required this.latestProduct,
      required this.lowPriceProduct,
      required this.highPriceProduct,
      required this.popularestProduct,
      required this.banners});
}

class HomeError extends HomeState {
  final String errorMessage;
  const HomeError({required this.errorMessage});
}
