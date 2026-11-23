import 'package:get_it/get_it.dart';
import 'package:savor/core/services/api_service.dart';
import 'package:savor/features/category%20meals/data/repos/category_meals_repo_impl.dart';
import 'package:savor/features/home/data/repos/get_categories_repo_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );

  getIt.registerLazySingleton<ApiService>(() => ApiService());

  getIt.registerLazySingleton<GetCategoriesRepoImpl>(
    () => GetCategoriesRepoImpl(apiService: getIt<ApiService>()),
  );
 
 getIt.registerLazySingleton<CategoryMealsRepoImpl>(()=>CategoryMealsRepoImpl(apiService: getIt<ApiService>()));

}
