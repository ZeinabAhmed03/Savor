import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_colors.dart';
import 'package:savor/core/widgets/custom_elevated_button.dart';

class ShowPageCircularProgress extends StatelessWidget {
  const ShowPageCircularProgress({
    super.key,
    required this.currentIndex,
    required PageController pageController,
  }) : _pageController = pageController;

  final int currentIndex;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          height: 50,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(left: 5),
              height: 12,
              width: currentIndex == index ? 18 : 12,
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? AppColors.mainColor
                    : Colors.grey.shade800,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),

        Spacer(),
        CustomElevatedButton(
          onPressed: () {
            _pageController.nextPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 600),
            );
          },
          shape: CircleBorder(),
          size: Size(55, 55),
          child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 25),
        ),
      ],
    );
  }
}
