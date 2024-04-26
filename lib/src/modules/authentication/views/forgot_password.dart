import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/modules/authentication/views/reset_password.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // -- Heading --
              Text(TTexts.forgotPasswordTitle,
                  style: context.textTheme.headlineMedium),
              TSpacer.vSpacing(TSizes.spaceBtwItems),
              Text(TTexts.forgotPasswordSubTitle,
                  style: context.textTheme.labelMedium),
              TSpacer.vSpacing(TSizes.spaceBtwSections * 2),

              // -- Text Field --
              TextFormField(
                decoration: const InputDecoration(
                    labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
              ),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              // -- Submit Button --
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => context.push(const ResetPassword()),
                      child: const Text(TTexts.submit))),
            ],
          ),
        ),
      ),
    );
  }
}
