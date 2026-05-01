import 'package:b_store_app/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:b_store_app/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:get/get.dart';
import 'package:b_store_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:b_store_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:b_store_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:b_store_app/utils/constants/image_strings.dart';
import 'package:b_store_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: BImages.onBoardingImage1,
                title: BTexts.onBoardingTitle1,
                subTitle: BTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: BImages.onBoardingImage2,
                title: BTexts.onBoardingTitle2,
                subTitle: BTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: BImages.onBoardingImage3,
                title: BTexts.onBoardingTitle3,
                subTitle: BTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
