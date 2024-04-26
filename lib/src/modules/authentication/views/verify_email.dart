import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/success_screen/success_screen.dart';
import 'package:trend_style_store/src/modules/authentication/views/login.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => context.pushAndRemoveUntil(const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image.asset(
                TImages.deliveredEmailIllustration,
                width: context.screenWidth * 0.6,
              ),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              /// Title & SubTitle
              Text(TTexts.confirmEmail,
                  style: context.textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              TSpacer.vSpacing(TSizes.spaceBtwItems),
              Text('support@akingbadebasit.com',
                  style: context.textTheme.labelLarge,
                  textAlign: TextAlign.center),
              TSpacer.vSpacing(TSizes.spaceBtwItems),
              Text(TTexts.confirmEmailSubTitle,
                  style: context.textTheme.labelMedium,
                  textAlign: TextAlign.center),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => context.push(SuccessScreen(
                          image: TImages.accountCreatedSuccessIllustration,
                          title: TTexts.yourAccountCreatedTitle,
                          subTitle: TTexts.yourAccountCreatedSubTitle,
                          onPressed: () =>
                              context.pushAndRemoveUntil(const LoginScreen()),
                        )),
                    child: const Text(TTexts.tContinue)),
              ),
              TSpacer.vSpacing(TSizes.spaceBtwItems),
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
