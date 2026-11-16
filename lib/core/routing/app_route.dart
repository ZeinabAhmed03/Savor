import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:savor/core/services/service_locator.dart';
import 'package:savor/features/home/data/repos/get_categories_repo_impl.dart';
import 'package:savor/features/home/manager/cubit/get_categories_cubit.dart';
import 'package:savor/features/home/presentation/views/home_view.dart';
import 'package:savor/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:savor/features/splash/presentation/views/splash_view.dart';

class AppRoute {
  static const splashView = '/';
  static const onboardingView = '/onboardingView';
  static const homeView = '/homeView';

  static final goRouter = GoRouter(
    routes: [
      GoRoute(path: splashView, builder: (context, state) => SplashView()),
      GoRoute(
        path: onboardingView,

        builder: (context, state) {
          final showOnboarding = state.extra as bool;
          return OnboardingView(showOnboardingValue: showOnboarding);
        },
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              GetCategoriesCubit(getIt<GetCategoriesRepoImpl>())
                ..getCategories(),
          child: HomeView(),
        ),
      ),
    ],
  );
}
