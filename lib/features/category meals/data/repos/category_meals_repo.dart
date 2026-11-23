import 'package:dartz/dartz.dart';
import 'package:savor/core/services/failure.dart';
import 'package:savor/features/category%20meals/data/models/category_meals_model/category_meals_model.dart';

abstract class CategoryMealsRepo {
  Future<Either<Failure, CategoryMealsModel>> getCategoryMeals({
    required String category,
  });
}
