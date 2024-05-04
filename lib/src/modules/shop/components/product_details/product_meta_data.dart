import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/images/circular_image.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/brand_title_text_with_verified_icon.dart';
import 'package:trend_style_store/src/components/texts/product_price_text.dart';
import 'package:trend_style_store/src/components/texts/product_title_text.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/enums.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // -- Price & Sale Price --
        Row(
          children: [
            // -- Sale Tag --
            TCircularContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: context.textTheme.labelLarge
                    ?.copyWith(color: TColors.white),
              ),
            ),
            TSpacer.hSpacing(TSizes.spaceBtwItems),

            // -- Price --
            Text(
              '\$250',
              style: context.textTheme.titleMedium?.copyWith(
                decorationThickness: 3,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            TSpacer.hSpacing(TSizes.spaceBtwItems),
            const TProductPriceText(price: '175', isLarge: true),
          ],
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems / 1.5),

        // -- Title --
        const TProductTitleText(title: 'Green Nike Sport Shirt'),
        TSpacer.vSpacing(TSizes.spaceBtwItems / 1.5),

        // -- Stock Status --
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            TSpacer.hSpacing(TSizes.spaceBtwItems / 1.5),
            Text('In Stock', style: context.textTheme.titleMedium),
          ],
        ),
        TSpacer.vSpacing(TSizes.spaceBtwItems / 1.5),

        // -- Brand --
        Row(
          children: [
            TCircularImage(
              image: TImages.clothesCategoryIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.dark,
            ),
            const TBrandTitleTextWithVerifiedIcon(
                title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
