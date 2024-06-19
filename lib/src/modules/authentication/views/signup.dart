import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/login_signup/form_divider.dart';
import 'package:trend_style_store/src/components/login_signup/social_buttons.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/modules/authentication/components/signup/signup_form.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signupTitle, style: context.textTheme.headlineMedium),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              /// Signup Form
              const TSignupForm(),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              /// Divider
              const TFormDivider(dividerText: TTexts.orSignUpWith),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              /// Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
