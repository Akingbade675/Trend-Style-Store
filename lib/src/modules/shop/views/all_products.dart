import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/appbar/appbar.dart';
import 'package:trend_style_store/src/components/layouts/grid_layout.dart';
import 'package:trend_style_store/src/components/products/product_cards/product_card_veritcal.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Popular Products', style: context.textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // -- Dropdown --
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.sort),
                ),
                onChanged: (value) {},
                items: [
                  'Name',
                  'Higher Price',
                  'Lower Price',
                  'Newest',
                  'Popularity'
                ]
                    .map((option) =>
                        DropdownMenuItem(value: option, child: Text(option)))
                    .toList(),
              ),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              // -- Products --
              TGridLayout(
                itemCount: 8,
                itemBuilder: (_, index) => const TProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
