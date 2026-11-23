import 'package:flutter/material.dart';
import 'package:savor/features/category%20meals/data/models/category_meals_model/meal.dart';
import 'package:savor/features/category%20meals/presentation/views/widgets/recipe_image.dart';
import 'package:savor/features/category%20meals/presentation/views/widgets/recipe_info.dart';

class RecipeContainer extends StatelessWidget {
  const RecipeContainer({super.key, this.meal});
  final Meal? meal;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: boxDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecipeImage(mealImage: meal?.strMealThumb),
          SizedBox(width: 12),
          Expanded(child: RecipeInfo(meal: meal)),
        ],
      ),
    );
  }

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(25),
    );
  }
}
