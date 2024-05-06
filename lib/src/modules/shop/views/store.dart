import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/appbar/appbar.dart';
import 'package:trend_style_store/src/components/appbar/tabbar.dart';
import 'package:trend_style_store/src/components/brands/brand_card.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/search_container.dart';
import 'package:trend_style_store/src/components/layouts/grid_layout.dart';
import 'package:trend_style_store/src/components/products/cart/cart_menu_icon.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/section_heading.dart';
import 'package:trend_style_store/src/modules/shop/components/store/category_tab.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: context.textTheme.headlineMedium),
          actions: const [
            TCartCounterIcon(),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? TColors.dark : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      // -- Search Bar --
                      TSpacer.vSpacing(TSizes.spaceBtwItems),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      TSpacer.vSpacing(TSizes.spaceBtwSections),

                      // -- Featured Brands --
                      TSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      TSpacer.vSpacing(TSizes.defaultSpace),

                      // -- Brands Grid --
                      TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) => const TBrandCard()),
                    ],
                  ),
                ),
                bottom: const TTabBar(tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ]),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              TStoreCategoryTab(),
              TStoreCategoryTab(),
              TStoreCategoryTab(),
              TStoreCategoryTab(),
              TStoreCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
