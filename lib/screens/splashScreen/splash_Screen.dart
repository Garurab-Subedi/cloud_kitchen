import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:khaja_pani/screens/onboarding/onboarding_screen.dart';
import 'package:khaja_pani/utils%20/image_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // // Future.delayed(const Duration(seconds: 2), (() {
    //   Get.to(() => const OnboardingScreen());
    // }));

    // backgroundColor: Colors.blue,
    // body: Center(
    //   child: Container(
    //     decoration: const BoxDecoration(
    //         image: DecorationImage(
    //       image: AssetImage(AppImage.appLogo),
    //     )),
    //   ),
    // ),

    return AnimatedSplashScreen(
      splash: Center(
        child: Image.asset(AppImage.khajapani),
      ),
      nextScreen: const OnboardingScreen(),
      splashIconSize: height / 2,
      duration: 3000,
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
