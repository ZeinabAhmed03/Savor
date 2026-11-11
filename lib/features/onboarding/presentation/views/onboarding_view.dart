import 'package:flutter/material.dart';
import 'package:savor/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key, this.showOnboardingValue = true});
  final bool showOnboardingValue;
  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: OnboardingViewBody(showOnboardingValue: widget.showOnboardingValue),
    );
  }
}
