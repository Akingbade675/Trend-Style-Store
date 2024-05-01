import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/images/circular_image.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/brand_title_text_with_verified_icon.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/enums.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TBrandCard extends StatelessWidget {
  final bool showBorder;
  final VoidCallback? onTap;

  const TBrandCard({super.key, this.showBorder = true, this.onTap});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return GestureDetector(
      onTap: () {},
      child: TCircularContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        backgroundColor: Colors.transparent,
        showBorder: showBorder,
        borderColor: dark
            ? TColors.white.withOpacity(0.5)
            : TColors.dark.withOpacity(0.5),
        child: Row(
          children: [
            // -- Icon --
            Flexible(
              child: TCircularImage(
                image: TImages.brandImage1,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? TColors.white : TColors.dark,
              ),
            ),
            TSpacer.hSpacing(TSizes.spaceBtwItems / 2),

            // -- Brand Name --
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  TSpacer.vSpacing(TSizes.spaceBtwItems / 2),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
