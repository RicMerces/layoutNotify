import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff5974FF),
              Color(0xff278EFF),
              Color(0xff0028FF),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset('assets/svg/logo.svg'),
              ),
              const SizedBox(
                height: 50,
              ),
              SpinKitCircle(
                size: 80,
                itemBuilder: (context, index) => DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color:
                        index.isEven ? Colors.white : const Color(0xffC8D1FF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
