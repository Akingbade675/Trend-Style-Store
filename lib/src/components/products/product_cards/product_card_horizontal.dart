import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/icons/circular_icon.dart';
import 'package:trend_style_store/src/components/images/rounded_image.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/brand_title_text_with_verified_icon.dart';
import 'package:trend_style_store/src/components/texts/product_price_text.dart';
import 'package:trend_style_store/src/components/texts/product_title_text.dart';
import 'package:trend_style_store/src/modules/shop/views/product_details.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return GestureDetector(
      onTap: () => context.push(const ProductDetailScreen()),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: dark ? TColors.containerDark : TColors.softGrey,
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        ),
        child: Row(
          children: [
            // -- Thumbnail Image --
            TCircularContainer(
              height: 120,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.bgLight,
              child: Stack(
                children: [
                  // -- Thumbnail Image --
                  const TRoundedImage(
                    height: 120,
                    width: 120,
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
            // TSpacer.hSpacing(TSizes.sm),

            // -- Product Details --
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // -- Product Name --
                    const TProductTitleText(
                        title: 'Blue Nike Air Shoes', smallSize: true),
                    TSpacer.vSpacing(TSizes.spaceBtwItems / 2),
                    const TBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                    const Spacer(),

                    // -- Price & Add to Cart Button --
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: TProductPriceText(price: '35.5')),

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
