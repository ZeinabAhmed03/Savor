import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:savor/features/category%20meals/data/models/category_meals_model/category_meals_model.dart';
import 'package:savor/features/category%20meals/data/repos/category_meals_repo.dart';

part 'get_category_meals_state.dart';

class GetCategoryMealsCubit extends Cubit<GetCategoryMealsState> {
  GetCategoryMealsCubit(this.categoryMealsRepo)
    : super(GetCategoryMealsInitial());
  final CategoryMealsRepo categoryMealsRepo;

  Future getCategoryMeals({required String category}) async {
    emit(GetCategoryMealsLoading());
    final response = await categoryMealsRepo.getCategoryMeals(
      category: category,
    );
    response.fold(
      (failure) =>
          emit(GetCategoryMealsFailure(errMessage: failure.errMessage)),
      (success) => emit(GetCategoryMealsSuccess(categoryMealsModel: success)),
    );
  }
}
