import 'package:flutter/material.dart';

class ShowSkipButton extends StatelessWidget {
  const ShowSkipButton({super.key, required PageController pageController})
    : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Align(
        alignment: AlignmentGeometry.topRight,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade800,
          ),
          onPressed: () {
            _pageController.jumpToPage(2);
          },
          child: Text(
            'Skip',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
