import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_colors.dart';

class RecipeActions extends StatelessWidget {
  const RecipeActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 0.2),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            icon: Icon(Icons.favorite_border, color: AppColors.mainColor),
          ),
        ),
        SizedBox(width: 35),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 0.2),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            icon: Icon(Icons.share, color: AppColors.mainColor),
          ),
        ),
      ],
    );
  }
}
