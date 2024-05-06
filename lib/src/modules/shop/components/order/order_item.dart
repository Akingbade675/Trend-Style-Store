import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TOrderItem extends StatelessWidget {
  const TOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return TCircularContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: dark ? TColors.dark : TColors.bgLight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              // -- Icon --
              const Icon(Iconsax.ship),
              TSpacer.hSpacing(TSizes.spaceBtwItems / 2),

              // -- Status & Date --
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Processing',
                      style: context.textTheme.bodyLarge
                          ?.apply(color: TColors.primary, fontWeightDelta: 1),
                    ),
                    Text('03 May 2024', style: context.textTheme.headlineSmall),
                  ],
                ),
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm),
              ),
            ],
          ),
          TSpacer.vSpacing(TSizes.spaceBtwItems),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    // -- Icon --
                    const Icon(Iconsax.ship),
                    TSpacer.hSpacing(TSizes.spaceBtwItems / 2),

                    // -- Status & Date --
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order', style: context.textTheme.labelMedium),
                          Text('[#256f2]',
                              style: context.textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    // -- Icon --
                    const Icon(Iconsax.calendar),
                    TSpacer.hSpacing(TSizes.spaceBtwItems / 2),

                    // -- Status & Date --
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shipping Date',
                              style: context.textTheme.labelMedium),
                          Text('05 May 2024',
                              style: context.textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
