// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_ecommerce/src/domain/model/product/product.dart';
import 'package:nike_ecommerce/src/domain/repository/banner/banner_repostory_imp.dart';
import 'package:nike_ecommerce/src/domain/repository/product/product_repository_imp.dart';
import 'package:nike_ecommerce/src/presentation/costants/constants.dart';
import 'package:nike_ecommerce/src/presentation/ui/home/bloc/home_bloc.dart';
import 'package:nike_ecommerce/src/presentation/ui/product_details/product_details_screen.dart';
import 'package:nike_ecommerce/src/presentation/ui/widget/widgets.dart';
import 'package:nike_ecommerce/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final homeBloc = HomeBloc(
            productRepositoryImp: ProductRepositoryImp(),
            bannerRepositoryImp: BannerRepositoryImp());
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
                  return Center(
                    child: Column(
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
                        Stack(children: [
                          SizedBox(
                            height: 200,
                            child: PageView.builder(
                              controller: _controller,
                              itemCount: state.banners.length,
                              itemBuilder: (context, index) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    padding: const EdgeInsets.fromLTRB(
                                        16, 20, 16, 16),
                                    height: 350,
                                    child: ImageLoadingService(
                                        imageUrl: state.banners[index].image),
                                  ),
                                );
                              },
                            ),
                          ),
                          Positioned(
                              bottom: 20,
                              right: 170,
                              left: 120,
                              child: SmoothPageIndicator(
                                controller: _controller,
                                count: state.banners.length,
                                axisDirection: Axis.horizontal,
                                effect: const WormEffect(
                                    spacing: 8.0,
                                    radius: 8,
                                    dotWidth: 14,
                                    dotHeight: 2,
                                    paintStyle: PaintingStyle.fill,
                                    strokeWidth: 1.5,
                                    dotColor: Colors.grey,
                                    activeDotColor: LightTheme.primaryColor),
                              ))
                        ]),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('جدیدترین محصولات'),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'مشاهده همه',
                                    style: TextStyle(
                                        color: LightTheme.primaryColor),
                                  ))
                            ],
                          ),
                        ),
                        //latets product list
                        SizedBox(
                          height: 330,
                          child: HorizontaListView(
                            products: state.latestProduct,
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('پرطرفدارترین محصولات'),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'مشاهده همه',
                                    style: TextStyle(
                                        color: LightTheme.primaryColor),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 350,
                          child: HorizontaListView(
                              onTap: () {}, products: state.popularestProduct),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('ارزان ترین محصولات'),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'مشاهده همه',
                                    style: TextStyle(
                                        color: LightTheme.primaryColor),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 330,
                          child: HorizontaListView(
                              onTap: () {}, products: state.lowPriceProduct),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('گران ترین محصولات'),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'مشاهده همه',
                                    style: TextStyle(
                                        color: LightTheme.primaryColor),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 330,
                          child: HorizontaListView(
                              onTap: () {}, products: state.highPriceProduct),
                        ),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  );
                } else if (state is HomeLoading) {
                  return Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 370,
                      ),
                      Center(
                          child: const CircularProgressIndicator(
                        color: LightTheme.primaryColor,
                      ))
                    ],
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

class HorizontaListView extends StatelessWidget {
  final GestureTapCallback onTap;
  final List<ProductEntity> products;
  const HorizontaListView({
    Key? key,
    required this.onTap,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      physics: defaultScrollPhysics,
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Directionality(
                      textDirection: TextDirection.rtl,
                      child: ProductDetailsScreen(product: product)),
                ));
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                height: 230,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ImageLoadingService(imageUrl: product.image),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(),
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    product.price.toString() + "  " + "تومان",
                    style: const TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
                  Text(product.discount.toString() + "  " + "تومان"),
                  const SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
