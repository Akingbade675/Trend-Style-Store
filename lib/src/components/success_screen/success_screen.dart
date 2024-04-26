import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subTitle;
  final VoidCallback onPressed;

  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacer.paddingWithAppHeight * 2,
          child: Column(
            children: [
              // -- Image --
              Image.asset(
                image,
                width: context.screenWidth * 0.6,
              ),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              // -- Title & SubTitle --
              Text(title,
                  style: context.textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              TSpacer.vSpacing(TSizes.spaceBtwItems),

              Text(subTitle,
                  style: context.textTheme.labelMedium,
                  textAlign: TextAlign.center),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              // -- Buttons --
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: const Text(TTexts.tContinue))),
            ],
          ),
        ),
      ),
    );
  }
}
