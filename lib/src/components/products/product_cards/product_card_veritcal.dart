import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/icons/circular_icon.dart';
import 'package:trend_style_store/src/components/images/rounded_image.dart';
import 'package:trend_style_store/src/components/shadows.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/brand_title_text_with_verified_icon.dart';
import 'package:trend_style_store/src/components/texts/product_price_text.dart';
import 'package:trend_style_store/src/components/texts/product_title_text.dart';
import 'package:trend_style_store/src/modules/shop/views/product_details.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return GestureDetector(
      onTap: () => context.push(const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: dark ? TColors.containerDark : TColors.containerLight,
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          boxShadow: TShadowStyle.verticalBoxShadow,
        ),
        child: Column(
          children: [
            // -- Thumbnail Image --
            TCircularContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.bgLight,
              child: Stack(
                children: [
                  // -- Thumbnail Image --
                  const TRoundedImage(
                    imageUrl: TImages.productImage2,
                    // backgroundColor:
                    //     context.isDarkMode ? TColors.dark : TColors.bgLight,
                  ),

                  // -- Sale Badge --
                  Positioned(
                    top: 12,
                    child: TCircularContainer(
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
                  ),

                  // -- Favorite Button --
                  const Positioned(
                    right: 0,
                    top: 0,
                    child:
                        TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
            TSpacer.vSpacing(TSizes.sm),

            // -- Product Details --
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // -- Product Name --
                    const TProductTitleText(
                        title: 'Red Nike Air Shoes', smallSize: true),
                    TSpacer.vSpacing(TSizes.sm),
                    const TBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                    const Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TProductPriceText(price: '35.5'),
                        TSpacer.hSpacing(TSizes.xs),

                        // -- Add to Cart Button --
                        Container(
                          decoration: BoxDecoration(
                            color: dark ? TColors.dark : TColors.bgLight,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius),
                            ),
                          ),
                          child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.iconLg * 1.2,
                            child: Center(
                                child: Icon(Iconsax.add, color: TColors.white)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
