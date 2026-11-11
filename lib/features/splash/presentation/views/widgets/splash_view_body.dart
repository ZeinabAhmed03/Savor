import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_assets.dart';
import 'package:savor/core/utils/app_colors.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.logo, height: 200, width: 200),
          Text(
            AppAssets.appName,
            style: TextStyle(
              color: AppColors.goldColor,
              fontWeight: FontWeight.w500,
              fontSize: 30,
              fontFamily: AppAssets.fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
