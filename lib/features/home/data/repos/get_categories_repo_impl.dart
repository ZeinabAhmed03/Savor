import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:savor/core/services/api_service.dart';
import 'package:savor/core/services/failure.dart';
import 'package:savor/features/home/data/models/category_model/category_model.dart';
import 'package:savor/features/home/data/repos/get_categories_repo.dart';

class GetCategoriesRepoImpl extends GetCategoriesRepo {
  final ApiService apiService;

  GetCategoriesRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, CategoryModel>> getCategories() async {
    try {
      final response = await apiService.getData(endPoint: 'categories.php');
      log(response.toString());
      final CategoryModel categoryModel = CategoryModel.fromJson(response);
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
