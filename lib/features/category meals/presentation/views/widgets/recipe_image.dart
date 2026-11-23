import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_assets.dart';

class RecipeImage extends StatelessWidget {
  const RecipeImage({super.key, this.mealImage});
  final String? mealImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(25),
        bottomLeft: Radius.circular(25),
      ),
      child: mealImage != null
          ? CachedNetworkImage(imageUrl: mealImage!)
          : Image.asset(AppAssets.bg1, width: 150, fit: BoxFit.cover),
    );
  }
}
