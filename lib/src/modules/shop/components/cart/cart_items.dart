import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/products/cart/add_and_remove_button.dart';
import 'package:trend_style_store/src/components/products/cart/cart_item.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/product_price_text.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  final bool showAddRemoveButtons;

  const TCartItems({super.key, this.showAddRemoveButtons = true});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, __) => TSpacer.vSpacing(TSizes.spaceBtwSections),
      itemBuilder: (_, index) {
        return Column(
          children: [
            const TCartItem(),
            if (showAddRemoveButtons) TSpacer.vSpacing(TSizes.spaceBtwItems),

            // Add & Remove Button Row with the Price
            if (showAddRemoveButtons)
              Row(
                children: [
                  TSpacer.hSpacing(70),
                  // -- Add & Remove Button --
                  const TProductQuantityAddAndRemoveButton(),
                  const Spacer(),
                  // -- Product Total Price --
                  const TProductPriceText(price: '256'),
                ],
              ),
          ],
        );
      },
    );
  }
}
