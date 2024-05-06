import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/images/rounded_image.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/brand_title_text_with_verified_icon.dart';
import 'package:trend_style_store/src/components/texts/product_title_text.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return Row(
      children: [
        // -- Image --
        TRoundedImage(
          imageUrl: TImages.productImage4,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.bgDark : TColors.bgLight,
        ),
        TSpacer.hSpacing(TSizes.spaceBtwItems),

        // -- Title, Price & Size --
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleTextWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                  child: TProductTitleText(
                      title: 'Blue Sports Shoes', maxLines: 1)),
              // -- Attributes --
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Color ', style: context.textTheme.bodySmall),
                    TextSpan(
                        text: 'Blue   ', style: context.textTheme.bodyLarge),
                    TextSpan(text: 'Size ', style: context.textTheme.bodySmall),
                    TextSpan(
                        text: 'EU 43   ', style: context.textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
