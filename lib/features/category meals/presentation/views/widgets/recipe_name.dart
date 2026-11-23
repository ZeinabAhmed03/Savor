import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_colors.dart';

class RecipeName extends StatelessWidget {
  const RecipeName({super.key, this.mealName});
  final String? mealName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('recipe name', style: TextStyle(color: AppColors.goldColor)),
          Icon(Icons.arrow_forward_ios, color: AppColors.goldColor),
        ],
      ),
    );
  }
}
