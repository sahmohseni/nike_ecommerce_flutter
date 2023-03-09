import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_ecommerce/src/domain/model/comment/comment.dart';
import 'package:nike_ecommerce/src/presentation/ui/home/bloc/home_bloc.dart';
import 'package:nike_ecommerce/src/presentation/ui/product_details/comment/bloc/comment_list_bloc.dart';
import 'package:nike_ecommerce/src/presentation/ui/widget/app_exception.dart';

class CommentList extends StatelessWidget {
  final int productId;
  CommentList({required this.productId});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final commentBloc = CommentListBloc(productId: productId);
        commentBloc.add(CommentListStart());
        return commentBloc;
      },
      child: BlocBuilder<CommentListBloc, CommentListState>(
        builder: (context, state) {
          if (state is CommentListSuccess) {
            return SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return CommentItem(data: state.comments[index]);
            }, childCount: state.comments.length));
          } else if (state is CommentListLoading) {
            return SliverToBoxAdapter(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('در حال بارگذاری نظرات'),
                    const CircularProgressIndicator()
                  ],
                ),
              ),
            );
          } else if (state is CommentListError) {
            return SliverToBoxAdapter(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('لطفا مجدد تلاش کنید'),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CommentListBloc>(context)
                              .add(CommentListStart());
                        },
                        child: Row(
                          children: [
                            Text('تلاش مجدد'),
                            const SizedBox(
                              width: 4,
                            ),
                            Icon(
                              CupertinoIcons.refresh,
                              size: 18,
                            )
                          ],
                        )),
                  )
                ],
              ),
            ));
          } else {
            throw AppException(exceptionMessage: 'لیست نظرات دریافت نشد');
          }
        },
      ),
    );
  }
}

class CommentItem extends StatelessWidget {
  final CommentEntity data;
  const CommentItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 20,
            offset: Offset(0, 3),
            spreadRadius: 5)
      ], borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data.author),
              Text(data.date),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Text(data.title),
          Text(data.content)
        ],
      ),
    );
  }
}
