import 'package:b_store_app/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:b_store_app/utils/constants/colors.dart';
import 'package:b_store_app/utils/constants/sizes.dart';
import 'package:b_store_app/utils/device/device_utility.dart';
import 'package:b_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);

    return Positioned(
      right: BSizes.defaultSpace,
      bottom: BDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? BColors.primary : BColors.dark,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
