import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey), shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              TImages.googleLogo,
              width: TSizes.iconSm,
              height: TSizes.iconSm,
            ),
          ),
        ),
        TSpacer.hSpacing(TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey), shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              TImages.facebookLogo,
              width: TSizes.iconSm,
              height: TSizes.iconSm,
            ),
          ),
        ),
      ],
    );
  }
}
