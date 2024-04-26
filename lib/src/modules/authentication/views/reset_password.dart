import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/modules/authentication/views/login.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // -- Image with 60% of screen width --
              Image.asset(
                TImages.deliveredEmailIllustration,
                width: context.screenWidth * 0.6,
              ),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              // -- Title & SubTitle --
              Text(TTexts.changeYourPasswordTitle,
                  style: context.textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              TSpacer.vSpacing(TSizes.spaceBtwItems),

              Text(TTexts.changeYourPasswordSubTitle,
                  style: context.textTheme.labelMedium,
                  textAlign: TextAlign.center),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              // -- Buttons --
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>
                          context.pushAndRemoveUntil(const LoginScreen()),
                      child: const Text(TTexts.done))),
              TSpacer.vSpacing(TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(TTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
