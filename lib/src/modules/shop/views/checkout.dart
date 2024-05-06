import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/appbar/appbar.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/products/cart/coupon_widget.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/success_screen/success_screen.dart';
import 'package:trend_style_store/src/modules/shop/components/cart/cart_items.dart';
import 'package:trend_style_store/src/modules/shop/components/checkout/billing_address_section.dart';
import 'package:trend_style_store/src/modules/shop/components/checkout/billing_amount_section.dart';
import 'package:trend_style_store/src/modules/shop/components/checkout/billing_payment_section.dart';
import 'package:trend_style_store/src/navigation_menu.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return Scaffold(
      appBar: TAppBar(
        title: Text('Order Review', style: context.textTheme.headlineSmall),
        showBackArrow: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => context.push(
            SuccessScreen(
              image: TImages.staticSuccessIllustration,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => context.pushAndRemoveUntil(NavigationMenu()),
            ),
          ),
          child: const Text('Checkout \$256.0'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // -- Items in Cart --
              const TCartItems(showAddRemoveButtons: false),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              // -- Coupon Textfield --
              const TCouponCode(),
              TSpacer.vSpacing(TSizes.spaceBtwSections),

              // -- Billing Section --
              TCircularContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.dark : TColors.white,
                child: Column(
                  children: [
                    // -- Pricing --
                    const TBillingAmountSection(),
                    TSpacer.vSpacing(TSizes.spaceBtwItems),

                    // -- Divider --
                    const Divider(),
                    TSpacer.vSpacing(TSizes.spaceBtwItems),

                    // -- Payment Methods --
                    const TBillingPaymentSection(),
                    TSpacer.vSpacing(TSizes.spaceBtwItems),

                    // -- Address --
                    const TBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
