import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TSearchContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;

  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: TCircularContainer(
          width: double.infinity,
          height: 56,
          radius: TSizes.cardRadiusLg,
          padding: TSizes.md,
          border: showBorder ? Border.all(color: TColors.grey) : null,
          backgroundColor: showBackground
              ? dark
                  ? TColors.dark
                  : TColors.white
              : Colors.transparent,
          child: Row(
            children: [
              Icon(icon, color: dark ? TColors.lightGrey : TColors.darkerGrey),
              TSpacer.hSpacing(TSizes.spaceBtwItems),
              Text(text,
                  style: context.textTheme.bodySmall?.copyWith(
                      color: dark ? TColors.lightGrey : TColors.darkerGrey)),
            ],
          ),
        ),
      ),
    );
  }
}
