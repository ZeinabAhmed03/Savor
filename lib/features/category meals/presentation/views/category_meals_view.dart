import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savor/core/utils/app_assets.dart';
import 'package:savor/core/utils/app_colors.dart';
import 'package:savor/features/category%20meals/presentation/views/widgets/category_meals_view_body.dart';

class CategoryMealsView extends StatelessWidget {
  const CategoryMealsView({super.key, required this.categoryName});
  final String? categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios, color: AppColors.goldColor),
        ),
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          categoryName ?? 'Category Name',
          style: TextStyle(
            color: AppColors.goldColor,
            fontFamily: AppAssets.fontFamily,
            fontSize: 20,
          ),
        ),
      ),

      body: SafeArea(child: CategoryMealsViewBody()),
    );
  }
}
