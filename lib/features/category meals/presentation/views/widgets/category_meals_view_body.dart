import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savor/core/widgets/custom_skeletonizer.dart';
import 'package:savor/features/category%20meals/manager/cubit/get_category_meals_cubit.dart';
import 'package:savor/features/category%20meals/presentation/views/widgets/recipe_item.dart';

class CategoryMealsViewBody extends StatelessWidget {
  const CategoryMealsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: BlocBuilder<GetCategoryMealsCubit, GetCategoryMealsState>(
        builder: (context, state) {
          if (state is GetCategoryMealsLoading) {
            return CustomSkeletonizer(child: RecipeItem());
          } else if (state is GetCategoryMealsSuccess) {
            return RecipeItem(meals: state.categoryMealsModel.meals);
          } else if (state is GetCategoryMealsFailure) {
            return Center(child: Text(state.errMessage));
          } else {
            return Center(
              child: Text('There is a problem, please try again later!'),
            );
          }
        },
      ),
    );
  }
}
