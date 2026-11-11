import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:savor/core/routing/app_route.dart';
import 'package:savor/core/utils/app_colors.dart';
import 'package:savor/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  bool getShowOnboardingValue() {
    return GetIt.I<SharedPreferences>().getBool('showOnboarding') ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      backgroundColor: AppColors.mainColor,
      onEnd: () {
        getShowOnboardingValue()
            ? GoRouter.of(
                context,
              ).pushReplacement(AppRoute.onboardingView, extra: false)
            : GoRouter.of(context).pushReplacement(AppRoute.homeView);
      },
      childWidget: SplashViewBody(),
    );
  }
}
