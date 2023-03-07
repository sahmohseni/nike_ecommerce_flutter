import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_ecommerce/src/domain/repository/product/product_repository_imp.dart';
import 'package:nike_ecommerce/src/presentation/costants/constants.dart';
import 'package:nike_ecommerce/src/presentation/ui/home/bloc/home_bloc.dart';
import 'package:nike_ecommerce/src/presentation/widget/app_exception.dart';
import 'package:nike_ecommerce/src/presentation/widget/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final homeBloc = HomeBloc(productRepositoryImp: ProductRepositoryImp());
        homeBloc.add(HomeStarted());
        return homeBloc;
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: defaultScrollPhysics,
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeSuccess) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Image.asset(
                          'assets/images/nike_logo.png',
                          height: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16, left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('جدیدترین محصولات'),
                            TextButton(
                                onPressed: () {},
                                child: const Text('مشاهده همه'))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 350,
                        child: ListView.builder(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                          physics: defaultScrollPhysics,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.latestProduct.length,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                    height: 230,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: ImageLoadingService(
                                        imageUrl:
                                            state.latestProduct[index].image),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SizedBox(
                                  width: 185,
                                  height: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        state.latestProduct[index].title,
                                        style: TextStyle(),
                                        maxLines: 1,
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        state.latestProduct[index].discount
                                                .toString() +
                                            "  " +
                                            "تومان",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      Text(state.latestProduct[index].price
                                              .toString() +
                                          "  " +
                                          "تومان"),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  );
                } else if (state is HomeLoading) {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: Colors.black,
                  ));
                } else if (state is HomeError) {
                  return Center(
                    child: Column(
                      children: [
                        const Text('دوباره تلاش کنید'),
                        const SizedBox(
                          height: 6,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(HomeStarted());
                            },
                            child: Row(
                              children: const [
                                Text('دوباره تلاش کنید'),
                                SizedBox(
                                  height: 4,
                                ),
                                Icon(
                                  CupertinoIcons.refresh,
                                  size: 16,
                                )
                              ],
                            ))
                      ],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
