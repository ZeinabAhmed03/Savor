import 'meal.dart';

class CategoryMealsModel {
  List<Meal>? meals;

  CategoryMealsModel({this.meals});

  factory CategoryMealsModel.fromJson(Map<String, dynamic> json) {
    return CategoryMealsModel(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'meals': meals?.map((e) => e.toJson()).toList(),
  };
}
