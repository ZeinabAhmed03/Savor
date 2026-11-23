import 'package:flutter/material.dart';
import 'package:savor/features/category%20meals/data/models/category_meals_model/meal.dart';

class RecipeCountry extends StatelessWidget {
  const RecipeCountry({super.key, this.meal});
  final Meal? meal;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.language, color: Colors.grey, size: 20),
        Expanded(
          child: Text(
            meal?.strCountry ?? "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
