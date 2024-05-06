import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/section_heading.dart';
import 'package:trend_style_store/src/modules/shop/components/product_details/bottom_add_to_cart_widget.dart';
import 'package:trend_style_store/src/modules/shop/components/product_details/product_attributes.dart';
import 'package:trend_style_store/src/modules/shop/components/product_details/product_detail_image_slider.dart';
import 'package:trend_style_store/src/modules/shop/components/product_details/product_meta_data.dart';
import 'package:trend_style_store/src/modules/shop/components/product_details/rating_share_widget.dart';
import 'package:trend_style_store/src/modules/shop/views/product_reviews.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Product Image Slider --
            const TProductImageSlider(),

            // -- Product Details --
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.defaultSpace,
              ).copyWith(bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // -- Rating & Share --
                  const TRatingAndShare(),

                  // -- Price, Title, Stock & Brand --
                  const TProductMetaData(),

                  // -- Attributes --
                  const TProductAttributes(),
                  TSpacer.vSpacing(TSizes.spaceBtwSections),

                  // -- Checkout Button --
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  TSpacer.vSpacing(TSizes.spaceBtwSections),

                  // -- Description --
                  const TSectionHeading(
                      title: "Description", showActionButton: false),
                  TSpacer.vSpacing(TSizes.spaceBtwItems),
                  ReadMoreText(
                    'This is the Product Description for a Blue Nike Sleeve-less vest. There are more things that can be added but I am just going to keep it simple for now.',
                    trimLines: 2,
                    colorClickableText: TColors.primary,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: ' Less',
                    // style: TextStyle(
                    //   fontSize: 12.sp,
                    //   fontWeight: FontWeight.w400,
                    //   color: AppColors.white,
                    // ),
                    moreStyle: TextStyle(
                        fontSize: 14,
                        color: TColors.primary.withOpacity(0.5),
                        fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(
                        fontSize: 14,
                        color: TColors.primary.withOpacity(0.5),
                        fontWeight: FontWeight.w800),
                  ),

                  // -- Reviews --
                  Divider(
                      color: context.isDarkMode
                          ? TColors.grey
                          : TColors.darkerGrey),
                  TSpacer.vSpacing(TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                          title: "Reviews (199)", showActionButton: false),
                      IconButton(
                        onPressed: () =>
                            context.push(const ProductReviewsScreen()),
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                      ),
                    ],
                  ),
                  TSpacer.vSpacing(TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
