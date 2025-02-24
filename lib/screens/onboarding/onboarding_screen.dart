import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaja_pani/controller/onboarding/onboarding_controller.dart';
import 'package:khaja_pani/screens/login/login_screen.dart';
import 'package:khaja_pani/screens/onboarding/onboardingWidgets/onboarding_widget.dart';
import 'package:khaja_pani/utils%20/color.dart';
import 'package:khaja_pani/utils%20/image_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils /texts_string.dart';
import '../../utils /theme.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.indicator,
            onPageChanged: (value) {
              controller.page.value = value;
              // print(controller.page.value);
            },
            children: const [
              OnBoardingWidgets(
                image: AppImage.onBoarding1,
                title: GTexts.onBoardingTitle1,
                subtitle: GTexts.onsubBoardingTitle1,
              ),
              OnBoardingWidgets(
                  image: AppImage.onBoarding2,
                  title: GTexts.onBoardingTitle2,
                  subtitle: GTexts.onsubBoardingTitle2),
              OnBoardingWidgets(
                image: AppImage.onBoarding3,
                title: GTexts.onBoardingTitle3,
                subtitle: GTexts.onsubBoardingTitle3,
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0.8, -0.87),
            child: GestureDetector(
                onTap: () {
                  controller.indicator.jumpToPage(3);
                },
                child: const Text('Skip')),
          ),
          Obx(
            () => Container(
              alignment: const Alignment(0, 0.90),
              child: controller.page.value != 2
                  ? SmoothPageIndicator(
                      controller: controller.indicator,
                      count: 3,
                      effect: const SlideEffect(
                        activeDotColor: GColors.primary,
                        dotColor: GColors.slideactionsecondry,
                        dotHeight: 8,
                        dotWidth: 8,
                        spacing: 8.0,
                        radius: 4.0,
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        // Navigate to the login page or home screen
                        Get.to(() => const LoginScreen());
                      },
                      child: Container(
                        height: 55,
                        width: Get.width * 0.9,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: GColors.secondary,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(5.0, 8.0),
                                blurRadius: 4.0,
                              )
                            ]),
                        child: Text(
                          'Getting started',
                          style: semibold.copyWith(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
