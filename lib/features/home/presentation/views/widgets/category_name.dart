import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_assets.dart';
import 'package:savor/core/utils/app_colors.dart';

class CategoryName extends StatelessWidget {
  const CategoryName({super.key, this.categoryName});

  final String? categoryName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryName ?? 'categoryName',
            style: TextStyle(
              fontFamily: AppAssets.fontFamily,
              color: AppColors.goldColor,
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 18, color: AppColors.goldColor),
        ],
      ),
    );
  }
}
