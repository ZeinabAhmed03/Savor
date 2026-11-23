import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_assets.dart';
import 'package:savor/core/utils/app_colors.dart';
import 'package:savor/features/home/data/models/category_model/category_model.dart';
import 'package:savor/features/home/presentation/views/widgets/show_categories_grid_view.dart';
import 'package:savor/features/home/presentation/views/widgets/search_text_field.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key, this.onTap, this.categoryModel});

  final Function()? onTap;
  final CategoryModel? categoryModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //--------------Show Search Text Field----------------
          SearchTextField(onTap: onTap),
          SizedBox(height: 12),
          //TODO: uncomment recently viewed section once meal details is implemented.
          /*
          Text(
            'Recently Viewed',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          RecentlyViewedSection(),
          SizedBox(height: 12),
          */
          //--------------show categories section----------------
          Text(
            'All Food Genres',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: AppAssets.fontFamily,
              color: AppColors.goldColor,
            ),
          ),
          SizedBox(height: 12),

          ShowCategoriesGridView(categoryModel: categoryModel),
        ],
      ),
    );
  }
}
