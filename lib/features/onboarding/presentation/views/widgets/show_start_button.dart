import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:savor/core/routing/app_route.dart';
import 'package:savor/core/widgets/custom_elevated_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShowStartButton extends StatelessWidget {
  const ShowStartButton({
    super.key,
    required PageController pageController,
    required this.showOnboardingValue,
  });

  final bool showOnboardingValue;

  void setShowOnboardingValue() async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setBool('showOnboarding', showOnboardingValue);
    log(prefs.getBool('showOnboarding').toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          size: Size(double.maxFinite, 55),
          onPressed: () {
            setShowOnboardingValue();
            GoRouter.of(context).pushReplacement(AppRoute.homeView);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          child: Text(
            'Start',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
