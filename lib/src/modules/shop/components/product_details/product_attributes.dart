import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/chips/choice_chip.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/product_price_text.dart';
import 'package:trend_style_store/src/components/texts/product_title_text.dart';
import 'package:trend_style_store/src/components/texts/section_heading.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return Column(
      children: [
        // -- Selected Attribute Pricing & Description --
        TCircularContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                      title: 'Variation', showActionButton: false),
                  TSpacer.hSpacing(TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Price : ', smallSize: true),
                          // -- Actual Price --
                          Text(
                            '\$25 ',
                            style: context.textTheme.titleSmall?.copyWith(
                              decorationThickness: 3,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),

                          // -- Sale Price --
                          const TProductPriceText(price: '20'),
                        ],
                      ),

                      // -- Stock --
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Status : ', smallSize: true),
                          // -- Actual Price --
                          Text('In Stock',
                              style: context.textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // -- Variation Description --
              const TProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems),

        // -- Attributes --
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false),
            TSpacer.vSpacing(TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems / 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButton: false),
            TSpacer.vSpacing(TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
