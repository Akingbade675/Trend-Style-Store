import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // -- SubTotal --
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: context.textTheme.bodyMedium),
            Text('\$256.0', style: context.textTheme.bodyMedium),
          ],
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems / 2),

        // -- Shipping Fee --
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: context.textTheme.bodyMedium),
            Text('\$6.0', style: context.textTheme.labelLarge),
          ],
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems / 2),

        // -- Tax Fee --
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: context.textTheme.bodyMedium),
            Text('\$262.0', style: context.textTheme.labelLarge),
          ],
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems / 2),

        // -- Order Total --
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: context.textTheme.bodyMedium),
            Text('\$262.0', style: context.textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
