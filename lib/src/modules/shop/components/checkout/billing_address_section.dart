import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/section_heading.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
            title: 'Shipping Address', buttonText: 'Change', onPressed: () {}),
        TSpacer.vSpacing(TSizes.spaceBtwItems / 2),
        Text('Abdulbasit Akingbade', style: context.textTheme.bodyLarge),
        TSpacer.vSpacing(TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: TColors.grey, size: 16),
            TSpacer.hSpacing(TSizes.spaceBtwItems),
            Text('0903 567 2340', style: context.textTheme.bodyMedium),
          ],
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: TColors.grey, size: 16),
            TSpacer.hSpacing(TSizes.spaceBtwItems),
            Flexible(
              child: Text(
                'University of Lagos Akoka, Yaba, Lagos, Nigeria',
                style: context.textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
