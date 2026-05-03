import 'package:b_store_app/common/styles/spacing_styles.dart';
import 'package:b_store_app/utils/constants/colors.dart';
import 'package:b_store_app/utils/constants/image_strings.dart';
import 'package:b_store_app/utils/constants/sizes.dart';
import 'package:b_store_app/utils/constants/text_strings.dart';
import 'package:b_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark ? BImages.darkappLogo : BImages.lightappLogo,
                    ),
                  ),
                  Text(
                    BTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: BSizes.sm),
                  Text(
                    BTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: BSizes.spaceBtwSections,
                  ),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: BTexts.email,
                        ),
                      ),
                      const SizedBox(height: BSizes.spaceBtwInputFields),

                      /// Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: BTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: BSizes.spaceBtwInputFields / 2),

                      /// Remeber Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Remember Me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(BTexts.rememberMe),
                            ],
                          ),

                          /// Forget Password
                          TextButton(
                            onPressed: () {},
                            child: const Text(BTexts.forgetPassword),
                          ),
                        ],
                      ),
                      const SizedBox(height: BSizes.spaceBtwSections),

                      /// Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(BTexts.signIn),
                        ),
                      ),
                      const SizedBox(height: BSizes.spaceBtwItems),

                      /// Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(BTexts.createAccount),
                        ),
                      ),
                      const SizedBox(height: BSizes.spaceBtwSections),
                    ],
                  ),
                ),
              ),

              /// Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    color: dark ? BColors.darkGrey : BColors.grey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  ),
                ],
              ),

              /// Footer
            ],
          ),
        ),
      ),
    );
  }
}
