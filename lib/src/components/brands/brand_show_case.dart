import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/brands/brand_card.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TBrandShowcase extends StatelessWidget {
  final List<String> images;

  const TBrandShowcase({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return TCircularContainer(
      showBorder: true,
      borderColor: context.isDarkMode
          ? TColors.white.withOpacity(0.5)
          : TColors.dark.withOpacity(0.5),
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TBrandCard(showBorder: false),
          TSpacer.vSpacing(TSizes.spaceBtwItems),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Expanded brandTopProductImageWidget(String image, BuildContext context) {
    return Expanded(
      child: TCircularContainer(
        height: 100,
        backgroundColor: context.isDarkMode ? TColors.bgDark : TColors.bgLight,
        padding: const EdgeInsets.all(TSizes.md),
        margin: const EdgeInsets.all(TSizes.sm),
        child: Image.asset(image, fit: BoxFit.contain),
      ),
    );
  }
}
