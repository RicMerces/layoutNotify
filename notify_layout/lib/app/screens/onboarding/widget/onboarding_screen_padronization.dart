import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreenPadronization extends StatelessWidget {
  const OnboardingScreenPadronization({
    required this.text,
    required this.asset,
    required this.indexValue,
    Key? key,
  }) : super(key: key);

  final String text;
  final String asset;
  final int indexValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(asset),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              elevation: 5,
              onPressed: () {},
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff2C46CC),
                      Color(0xff278EFF),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: Text(
                        indexValue == 2 ? 'Começar' : 'Avançar',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(50),
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              ((index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 15,
                    width: indexValue == index ? 30 : 15,
                    decoration: BoxDecoration(
                      color: indexValue == index
                          ? const Color(0xff3757FF)
                          : const Color(0xffDAE5FF),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
