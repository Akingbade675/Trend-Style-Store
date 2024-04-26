import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/login_signup/form_divider.dart';
import 'package:trend_style_store/src/components/login_signup/social_buttons.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/modules/authentication/components/login/login_form.dart';
import 'package:trend_style_store/src/modules/authentication/components/login/login_header.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacer.paddingWithAppHeight,
          child: Column(
            children: [
              // -- Logo, Title, & Subtitle --
              const TLoginHeader(),

              /// -- Form --
              const TLoginForm(),

              /// Divider
              const TFormDivider(dividerText: TTexts.orSignInWith),

              TSpacer.vSpacing(TSizes.spaceBtwItems),

              /// Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
