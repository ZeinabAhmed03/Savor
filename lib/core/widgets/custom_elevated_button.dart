import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.child,
    required this.size,
    required this.shape,
  });
  final void Function()? onPressed;
  final Widget child;
  final Size size;
  final OutlinedBorder shape;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mainColor,
        shape: shape,
        shadowColor: AppColors.mainColor,
        fixedSize: size,
        elevation: 10,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
