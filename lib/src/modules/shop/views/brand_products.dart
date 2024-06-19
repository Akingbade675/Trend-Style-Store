import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/appbar/appbar.dart';
import 'package:trend_style_store/src/components/brands/brand_card.dart';
import 'package:trend_style_store/src/components/products/sortable/sortable_products.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Nike', style: context.textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // -- Brand Details --
              const TBrandCard(),
              TSpacer.vSpacing(TSizes.spaceBtwItems),

              // -- Brand Products --
              const TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
