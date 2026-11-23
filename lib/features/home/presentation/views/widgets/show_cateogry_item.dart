import 'package:flutter/material.dart';
import 'package:savor/features/home/data/models/category_model/category.dart';
import 'package:savor/features/home/presentation/views/widgets/category_image.dart';
import 'package:savor/features/home/presentation/views/widgets/category_name.dart';

class ShowCategoryItem extends StatelessWidget {
  const ShowCategoryItem({super.key, required this.category});
  final Category? category;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecoration(),
      height: 260,
      width: 200,
      child: ClipRRect(
        borderRadius: borderRaduis(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CategoryImage(imageUrl: category?.strCategoryThumb),
            CategoryName(categoryName: category?.strCategory),
          ],
        ),
      ),
    );
  }

  BorderRadiusGeometry borderRaduis() {
    return BorderRadiusGeometry.only(
      topLeft: Radius.circular(25),
      topRight: Radius.circular(25),
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Colors.white,
    );
  }
}
