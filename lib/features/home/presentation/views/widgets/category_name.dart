import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_assets.dart';
import 'package:savor/features/home/data/models/category_model/category.dart';

class CategoryName extends StatelessWidget {
  const CategoryName({super.key, required this.category});

  final Category? category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            category?.strCategory ?? 'categoryName',
            style: TextStyle(
              fontFamily: AppAssets.fontFamily,
              color: const Color(0xFF916C35),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: const Color(0xFF916C35),
          ),
        ],
      ),
    );
  }
}
