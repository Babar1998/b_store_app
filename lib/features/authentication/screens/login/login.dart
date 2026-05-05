import 'package:b_store_app/common/styles/spacing_styles.dart';
import 'package:b_store_app/common/widgets/login_signup/form_divider.dart';
import 'package:b_store_app/common/widgets/login_signup/social_buttons.dart';
import 'package:b_store_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:b_store_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:b_store_app/utils/constants/sizes.dart';
import 'package:b_store_app/utils/constants/text_strings.dart';
import 'package:b_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              BLoginHeader(dark: dark),

              /// Form
              const BLoginForm(),

              /// Divider
              BFormDivider(dividerText: BTexts.orSignInWith.capitalize!),
              const SizedBox(height: BSizes.spaceBtwSections),

              /// Footer
              const BSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
