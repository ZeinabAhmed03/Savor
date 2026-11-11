import 'package:flutter/material.dart';
import 'package:savor/features/onboarding/data/models/onboarding_model.dart';
import 'package:savor/features/onboarding/presentation/views/widgets/show_page_circular_progress.dart';
import 'package:savor/features/onboarding/presentation/views/widgets/show_start_button.dart';

class OnboardingPageContent extends StatelessWidget {
  const OnboardingPageContent({
    super.key,
    required this.onboardingPage,
    required this.currentIndex,
    required PageController pageController,
    required this.index,
    required this.showOnboardingValue,
  }) : _pageController = pageController;

  final List<OnboardingModel> onboardingPage;
  final int currentIndex;
  final PageController _pageController;
  final int index;
  final bool showOnboardingValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          onboardingPage[index].title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          onboardingPage[index].body,
          style: TextStyle(color: Color(0xffE3E1DB), fontSize: 14),
        ),
        Spacer(),
        index != 2
            ? ShowPageCircularProgress(
                currentIndex: currentIndex,
                pageController: _pageController,
              )
            : ShowStartButton(
                pageController: _pageController,
                showOnboardingValue: showOnboardingValue,
              ),
      ],
    );
  }
}
