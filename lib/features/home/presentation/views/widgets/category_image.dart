import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_assets.dart';

class CategoryImage extends StatelessWidget {
  const CategoryImage({super.key, this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffF0EDE9)),
      height: 175,
      width: 200,
      child: imageUrl != null
          ? CachedNetworkImage(imageUrl: imageUrl!, fit: BoxFit.fill)
          : Image.asset(AppAssets.bg1, fit: BoxFit.cover),
    );
  }
}
