import 'package:flutter/material.dart';
import 'package:notify_layout/app/core/utils/onboarding_page_utils.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<Onboarding> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) => onboardingPages[index],
        itemCount: onboardingPages.length,
        controller: _controller,
      ),
    );
  }
}
