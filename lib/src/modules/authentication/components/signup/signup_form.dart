import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/modules/authentication/components/signup/terms_conditions_checkbox.dart';
import 'package:trend_style_store/src/modules/authentication/views/verify_email.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// FirstName & LastName
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.firstName,
                  ),
                ),
              ),
              TSpacer.hSpacing(TSizes.spaceBtwInputFields),
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.lastName,
                  ),
                ),
              ),
            ],
          ),
          TSpacer.vSpacing(TSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_add),
              labelText: TTexts.userName,
            ),
          ),
          TSpacer.vSpacing(TSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: TTexts.email,
            ),
          ),
          TSpacer.vSpacing(TSizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TTexts.phoneNumber,
            ),
          ),
          TSpacer.vSpacing(TSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          TSpacer.vSpacing(TSizes.spaceBtwSections),

          /// Terms & Conditions CheckBox
          const TTermsAndConditionsCheckBox(),
          TSpacer.vSpacing(TSizes.spaceBtwSections),

          /// Sign up Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    context.push(const VerifyEmailScreen());
                  },
                  child: const Text(TTexts.createAccount))),
        ],
      ),
    );
  }
}
