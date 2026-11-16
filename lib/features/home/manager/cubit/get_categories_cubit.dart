import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:savor/features/home/data/models/category_model/category_model.dart';
import 'package:savor/features/home/data/repos/get_categories_repo.dart';
part 'get_categories_state.dart';

class GetCategoriesCubit extends Cubit<GetCategoriesState> {
  GetCategoriesCubit(this.categoriesRepo) : super(GetCategoriesInitial());
  final GetCategoriesRepo categoriesRepo;

  Future getCategories() async {
    emit(GetCategoriesLoading());
    final response = await categoriesRepo.getCategories();
    response.fold(
      (failure) => emit(GetCategoriesFailure(errMessage: failure.errMessage)),
      (success) => emit(GetCategoriesSuccess(categoryModel: success)),
    );
  }
}
