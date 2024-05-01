import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/primary_header_container.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/search_container.dart';
import 'package:trend_style_store/src/components/layouts/grid_layout.dart';
import 'package:trend_style_store/src/components/products/product_cards/product_card_veritcal.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/section_heading.dart';
import 'package:trend_style_store/src/modules/shop/components/home/home_appbar.dart';
import 'package:trend_style_store/src/modules/shop/components/home/home_categories.dart';
import 'package:trend_style_store/src/modules/shop/components/home/promo_slider.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Blue custom shaped container --
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- AppBar --
                  const THomeAppBar(),
                  TSpacer.vSpacing(TSizes.spaceBtwSections),

                  // -- Search Bar --
                  const TSearchContainer(text: 'Search in Store'),
                  TSpacer.vSpacing(TSizes.spaceBtwSections),

                  // -- Categories --
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // -- Heading --
                        const TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false),

                        TSpacer.vSpacing(TSizes.spaceBtwSections),

                        // -- Categories --
                        const THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.all(TSizes.defaultSpace).copyWith(top: 0),
              child: Column(
                children: [
                  // -- Promo Banners --
                  TPromoSlider(),
                  TSpacer.vSpacing(TSizes.spaceBtwSections),

                  // -- Popular Products --
                  TSectionHeading(title: 'Popular Products', onPressed: () {}),
                  TSpacer.vSpacing(TSizes.spaceBtwItems),
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
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
