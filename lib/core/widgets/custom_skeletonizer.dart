import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomSkeletonizer extends StatelessWidget {
  const CustomSkeletonizer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      ignoreContainers: true,
      effect: ShimmerEffect(baseColor: AppColors.shimmerColor),
      child: child,
    );
  }
}
