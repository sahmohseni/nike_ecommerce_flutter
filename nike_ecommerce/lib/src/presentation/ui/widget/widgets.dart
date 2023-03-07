import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageLoadingService extends StatelessWidget {
  final String imageUrl;
  const ImageLoadingService({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: imageUrl,
      ),
    );
  }
}
