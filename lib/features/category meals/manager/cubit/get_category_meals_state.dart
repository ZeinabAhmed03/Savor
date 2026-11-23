part of 'get_category_meals_cubit.dart';

@immutable
sealed class GetCategoryMealsState {}

final class GetCategoryMealsInitial extends GetCategoryMealsState {}

final class GetCategoryMealsLoading extends GetCategoryMealsState {}

final class GetCategoryMealsSuccess extends GetCategoryMealsState {
  final CategoryMealsModel categoryMealsModel;

  GetCategoryMealsSuccess({required this.categoryMealsModel});
}

final class GetCategoryMealsFailure extends GetCategoryMealsState {
  final String errMessage;

  GetCategoryMealsFailure({required this.errMessage});
}
