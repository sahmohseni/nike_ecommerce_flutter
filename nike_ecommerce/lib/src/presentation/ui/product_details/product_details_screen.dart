// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_ecommerce/src/domain/model/product/product.dart';
import 'package:nike_ecommerce/src/presentation/costants/constants.dart';
import 'package:nike_ecommerce/src/presentation/ui/product_details/comment/comment_list.dart';
import 'package:nike_ecommerce/src/presentation/ui/widget/widgets.dart';
import 'package:nike_ecommerce/theme.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductEntity product;

  const ProductDetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: defaultScrollPhysics,
        slivers: [
          SliverAppBar(
            actions: [Icon(CupertinoIcons.star)],
            backgroundColor: Colors.white,
            expandedHeight: MediaQuery.of(context).size.height / 2.4,
            foregroundColor: LightTheme.primaryColor,
            flexibleSpace: ImageLoadingService(imageUrl: product.image),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            product.discount.toString() + "  " + "تومان",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(product.price.toString() + "  " + "تومان")
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                      "این کفش ورزشی در کمپانی نایک طراحی و تولید شده است ،عملکرد این محصول در هنگام پیاده روی های طولانی مدت و ورزش های سنگین خیره کننده می باشد و خستگی و درد را در پا و عضلات شما به حداقل میرساند"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('نظرات کاربران'),
                      GestureDetector(
                        onTap: () {},
                        child: Text('ثبت نظر'),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
          CommentList(productId: product.id)
        ],
      ),
    );
  }
}
