import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kiwi/kiwi.dart';
import 'package:meta/meta.dart';
import 'package:nike_ecommerce/src/data/api/product/product_api_imp.dart';
import 'package:nike_ecommerce/src/domain/model/product/product.dart';
import 'package:nike_ecommerce/src/domain/repository/product/product_repository_imp.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProductRepositoryImp productRepositoryImp;

  HomeBloc({required this.productRepositoryImp}) : super(HomeLoading()) {
    on<HomeEvent>((event, emit) async {
      try {
        emit(HomeLoading());

        emit(HomeSuccess(
            latestProduct: await productRepositoryImp.getAllProduct(0),
            popularestProduct: await productRepositoryImp.getAllProduct(1)));
      } catch (e) {
        emit(HomeError(errorMessage: e.toString()));
      }
    });
  }
}
