import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/appbar/appbar.dart';
import 'package:trend_style_store/src/components/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:trend_style_store/src/components/icons/circular_icon.dart';
import 'package:trend_style_store/src/components/images/rounded_image.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return TCurvedEdgesWidget(
      child: Container(
        color: dark ? TColors.bgDark : TColors.bgLight,
        child: Stack(
          children: [
            // -- Large Image --
            Container(
              height: 400,
              padding: const EdgeInsets.all(TSizes.productImageRadius * 2),
              child: Center(child: Image.asset(TImages.productImage2)),
            ),
            Positioned(
              right: 0,
              bottom: 40,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      TSpacer.hSpacing(TSizes.spaceBtwItems),
                  itemBuilder: (_, index) {
                    return TRoundedImage(
                      imageUrl: TImages.productImage4,
                      width: 80,
                      border: Border.all(color: TColors.primary),
                      padding: const EdgeInsets.all(TSizes.sm),
                      backgroundColor: dark ? TColors.dark : TColors.white,
                    );
                  },
                ),
              ),
            ),
            const TAppBar(
              showBackArrow: true,
              actions: [TCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
