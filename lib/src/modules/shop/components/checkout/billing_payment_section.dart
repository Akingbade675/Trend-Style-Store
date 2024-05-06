import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/section_heading.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return Column(
      children: [
        TSectionHeading(
            title: 'Payment Method', buttonText: 'Change', onPressed: () {}),
        TSpacer.vSpacing(TSizes.spaceBtwItems / 2),
        Row(
          children: [
            TCircularContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.bgLight : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: Image.asset(TImages.applePay,
                  fit: BoxFit.contain, color: TColors.dark),
            ),
            TSpacer.hSpacing(TSizes.spaceBtwItems / 2),
            Text('Apple Pay', style: context.textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
