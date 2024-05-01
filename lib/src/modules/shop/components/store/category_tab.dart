import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/brands/brand_show_case.dart';
import 'package:trend_style_store/src/components/layouts/grid_layout.dart';
import 'package:trend_style_store/src/components/products/product_cards/product_card_veritcal.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/section_heading.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TStoreCategoryTab extends StatelessWidget {
  const TStoreCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // -- Brands --
              const TBrandShowcase(
                images: [
                  TImages.productImage2,
                  TImages.productImage3,
                  TImages.productImage4,
                ],
              ),
              const TBrandShowcase(
                images: [
                  TImages.productImage2,
                  TImages.productImage3,
                  TImages.productImage4,
                ],
              ),
              TSpacer.vSpacing(TSizes.spaceBtwItems),

              // -- Products --
              TSectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () {},
              ),
              TSpacer.vSpacing(TSizes.spaceBtwItems),
              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical()),
              TSpacer.vSpacing(TSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
