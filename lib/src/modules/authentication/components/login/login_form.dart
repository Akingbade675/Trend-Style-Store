import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/modules/authentication/views/forgot_password.dart';
import 'package:trend_style_store/src/modules/authentication/views/signup.dart';
import 'package:trend_style_store/src/navigation_menu.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            TSpacer.vSpacing(TSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            TSpacer.vSpacing(TSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.remember),
                  ],
                ),

                /// Forgot Password
                TextButton(
                    onPressed: () => context.push(const ForgotPasswordScreen()),
                    child: const Text(TTexts.forgotPassword)),
              ],
            ),
            TSpacer.vSpacing(TSizes.spaceBtwSections),

            /// Sign in Button

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.pushAndRemoveUntil(NavigationMenu()),
                child: const Text(TTexts.signin),
              ),
            ),
            TSpacer.vSpacing(TSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  context.push(const SignupScreen());
                },
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
