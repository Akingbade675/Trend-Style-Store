import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/appbar/appbar.dart';
import 'package:trend_style_store/src/components/images/rounded_image.dart';
import 'package:trend_style_store/src/components/products/product_cards/product_card_horizontal.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/section_heading.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Sports', style: context.textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // -- Banners --
              const TRoundedImage(imageUrl: TImages.promoBanner3, height: null),
              TSpacer.vSpacing(TSizes.spaceBtwItems),

              // -- Sub Categories --
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // -- Heading --
                  TSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  TSpacer.vSpacing(TSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) =>
                          TSpacer.hSpacing(TSizes.spaceBtwItems),
                      itemBuilder: (_, index) => const TProductCardHorizontal(),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
