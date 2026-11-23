import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savor/core/routing/app_route.dart';
import 'package:savor/features/home/data/models/category_model/category_model.dart';
import 'package:savor/features/home/presentation/views/widgets/show_cateogry_item.dart';

class ShowCategoriesGridView extends StatelessWidget {
  const ShowCategoriesGridView({super.key, this.categoryModel});
  final CategoryModel? categoryModel;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: categoryModel?.categories?.length ?? 5,
      gridDelegate: sliverGridDelegateWithFixedCrossAxisCount(),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          splashColor: Colors.transparent,
          onTap: () {
            if (categoryModel?.categories != null) {
              GoRouter.of(context).push(
                AppRoute.categoryMealsView,
                extra: categoryModel!.categories![index].strCategory!,
              );
            }
          },
          child: ShowCategoryItem(category: categoryModel?.categories?[index]),
        );
      },
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount
  sliverGridDelegateWithFixedCrossAxisCount() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      childAspectRatio: 5.8 / 8,
      mainAxisSpacing: 12,
    );
  }
}
