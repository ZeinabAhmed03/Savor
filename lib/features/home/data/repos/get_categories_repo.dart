import 'package:dartz/dartz.dart';
import 'package:savor/core/services/failure.dart';
import 'package:savor/features/home/data/models/category_model/category_model.dart';

abstract class GetCategoriesRepo {
  Future<Either<Failure, CategoryModel>> getCategories();
}
