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
  const HomeSuccess(
      {required this.latestProduct, required this.popularestProduct});
}

class HomeError extends HomeState {
  final String errorMessage;
  const HomeError({required this.errorMessage});
}
