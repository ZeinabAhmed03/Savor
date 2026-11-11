import 'package:flutter/material.dart';
import 'package:savor/features/onboarding/data/models/onboarding_model.dart';
import 'package:savor/features/onboarding/presentation/views/widgets/onboarding_page_content.dart';

class OnboardingPageData extends StatelessWidget {
  const OnboardingPageData({
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
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.35,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topCenter,
            end: AlignmentGeometry.bottomCenter,
            colors: [
              Colors.transparent,
              const Color.fromARGB(255, 177, 160, 155),
            ],
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: OnboardingPageContent(
            onboardingPage: onboardingPage,
            currentIndex: currentIndex,
            pageController: _pageController,
            index: index,
            showOnboardingValue: showOnboardingValue,
          ),
        ),
      ),
    );
  }
}
