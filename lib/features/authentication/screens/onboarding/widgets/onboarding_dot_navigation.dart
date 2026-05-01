import 'package:b_store_app/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:b_store_app/utils/constants/colors.dart';
import 'package:b_store_app/utils/constants/sizes.dart';
import 'package:b_store_app/utils/device/device_utility.dart';
import 'package:b_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = BHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: BDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: BSizes.defaultSpace,

      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavidationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? BColors.light : BColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
