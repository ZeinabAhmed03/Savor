import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:savor/core/services/api_service.dart';
import 'package:savor/core/services/failure.dart';
import 'package:savor/features/category%20meals/data/models/category_meals_model/category_meals_model.dart';
import 'package:savor/features/category%20meals/data/repos/category_meals_repo.dart';

class CategoryMealsRepoImpl extends CategoryMealsRepo {
  final ApiService apiService;

  CategoryMealsRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, CategoryMealsModel>> getCategoryMeals({
    required String category,
  }) async {
    try {
      final response = await apiService.getData(
        endPoint: 'filter.php?c=$category',
      );
      final CategoryMealsModel categoryModel = CategoryMealsModel.fromJson(
        response,
      );
      return right(categoryModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(errMessage: e.toString()));
      }
    }
  }
}
