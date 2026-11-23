import 'package:flutter/material.dart';
import 'package:savor/features/category%20meals/data/models/category_meals_model/meal.dart';
import 'package:savor/features/category%20meals/presentation/views/widgets/recipe_container.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({super.key, this.meals});
  final List<Meal>? meals;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: meals?.length ?? 10,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {},
                  child: RecipeContainer(meal: meals?[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
