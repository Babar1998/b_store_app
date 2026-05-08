import 'package:b_store_app/features/authentication/screens/signup/signup.dart';
import 'package:b_store_app/utils/constants/sizes.dart';
import 'package:b_store_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BLoginForm extends StatelessWidget {
  const BLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BSizes.spaceBtwSections),
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
                onPressed: () => Get.to(() => const SignupScreen()),
                child: Text(BTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
