import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_assets.dart';
import 'package:savor/features/onboarding/data/models/onboarding_model.dart';
import 'package:savor/features/onboarding/presentation/views/widgets/onboarding_page_data.dart';
import 'package:savor/features/onboarding/presentation/views/widgets/show_skip_button.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key, required this.showOnboardingValue});
  final bool showOnboardingValue;

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<OnboardingModel> onboardingPage = [
      OnboardingModel(
        image: AppAssets.bg1,
        title: 'Discover Master Recipes',
        body:
            'Explore timeless culinary classics passed down by artisanal masters worldwide, crafted with pure seasonal ingredients.',
      ),
      OnboardingModel(
        image: AppAssets.bg2,
        title: 'Curate Seasonal Menus',
        body:
            'Group your favorite handcrafted dishes into intimate dinner party menus, course collections, and weekly culinary rituals.',
      ),
      OnboardingModel(
        image: AppAssets.bg3,
        title: 'Cook with Utmost Clarity',
        body:
            'Step-by-step guidance, embedded technique masterclasses, and verified ingredient ratios with zero distractions.',
      ),
    ];
    return PageView.builder(
      controller: _pageController,
      itemCount: onboardingPage.length,
      onPageChanged: (value) {
        currentIndex = value;
        setState(() {});
      },

      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            Image.asset(
              onboardingPage[index].image,
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              fit: BoxFit.cover,
            ),

            if (index != 2) ShowSkipButton(pageController: _pageController),

            OnboardingPageData(
              onboardingPage: onboardingPage,
              currentIndex: currentIndex,
              pageController: _pageController,
              index: index,
              showOnboardingValue: widget.showOnboardingValue,
            ),
          ],
        );
      },
    );
  }
}
