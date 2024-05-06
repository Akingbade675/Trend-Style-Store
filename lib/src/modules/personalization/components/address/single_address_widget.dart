import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/circular_container.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TSingleAddress extends StatelessWidget {
  final bool selectedAddress;

  const TSingleAddress({super.key, this.selectedAddress = false});

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return TCircularContainer(
      showBorder: true,
      width: double.infinity,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      child: Stack(
        children: [
          Positioned(
            right: 5,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? TColors.white
                      : TColors.dark.withOpacity(0.7)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Abdulbasit Akingbade',
                maxLines: 1,
                style: context.textTheme.titleLarge,
                overflow: TextOverflow.ellipsis,
              ),
              TSpacer.vSpacing(TSizes.xs),
              const Text(
                '0903 567 2340',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              TSpacer.vSpacing(TSizes.xs),
              const Text(
                  'Eni-Njoku Hostel, University of Lagos Akoka, Yaba, Lagos, Nigeria',
                  softWrap: true),
            ],
          ),
        ],
      ),
    );
  }
}
