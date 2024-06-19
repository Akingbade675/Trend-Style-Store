import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(TImages.darkAppLogo, height: 150.h),
        TSpacer.vSpacing(TSizes.md),
        Text(TTexts.loginTitle, style: context.textTheme.headlineMedium),
        TSpacer.vSpacing(TSizes.sm),
        Text(TTexts.loginSubTitle, style: context.textTheme.bodyMedium),
      ],
    );
  }
}
