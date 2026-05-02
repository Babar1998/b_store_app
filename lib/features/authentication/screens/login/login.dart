import 'package:b_store_app/common/styles/spacing_styles.dart';
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
                      dark ? BImages.lightappLogo : BImages.darkappLogo,
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
                child: Column(
                  children: [
                    /// Email
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: BTexts.email,
                      ),
                    ),

                    /// Password
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
