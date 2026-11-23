import 'package:flutter/material.dart';
import 'package:savor/features/category%20meals/data/models/category_meals_model/meal.dart';
import 'package:savor/features/category%20meals/presentation/views/widgets/recipe_actions.dart';
import 'package:savor/features/category%20meals/presentation/views/widgets/recipe_country.dart';

class RecipeInfo extends StatelessWidget {
  const RecipeInfo({super.key, this.meal});
  final Meal? meal;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          meal?.strMeal ?? 'recipe name',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 16),
        ),
        RecipeCountry(meal: meal),
        SizedBox(height: 12),

        RecipeActions(),
      ],
    );
  }
}
