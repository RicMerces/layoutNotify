import 'package:flutter/material.dart';
import 'package:notify_layout/app/screens/onboarding/widget/onboarding_screen_padronization.dart';

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
    return const Scaffold(
      body: OnboardingScreenPadronization(
        asset: 'assets/svg/ONBOARDING01.svg',
        text: 'O melhor App de lembretes que nunca se esquece de te Notificar ',
        indexValue: 0,
      ),

      // body: Container(
      //   decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //       begin: Alignment.topLeft,
      //       end: Alignment.bottomRight,
      //       colors: [
      //         Color(0xffE38929),
      //         Color(0xffF4A62C),
      //         Color(0xffFFAB00),
      //       ],
      //     ),
      //   ),
      //   // child: PageView.builder(
      //   //   onPageChanged: (int index) {
      //   //     setState(() {
      //   //       currentIndex = index;
      //   //     });
      //   //   },
      //   //   itemBuilder: (context, index) => onboardingPages[index],
      //   //   itemCount: onboardingPages.length,
      //   //   controller: _controller,
      //   // ),
      // ),
    );
  }
}
