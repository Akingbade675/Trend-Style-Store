import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TVerticalImageText extends StatelessWidget {
  final String image, title;
  final VoidCallback? onTap;
  final Color textColor;
  final Color? backgroundColor;

  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
    this.textColor = TColors.white,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            padding: const EdgeInsets.all(TSizes.sm * 1.5),
            decoration: BoxDecoration(
              color: backgroundColor ?? (dark ? TColors.dark : TColors.white),
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              color: dark ? TColors.white : TColors.dark,
            ),
          ),

          TSpacer.vSpacing(TSizes.spaceBtwItems / 2),

          /// Text
          SizedBox(
            width: 55,
            child: Center(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    context.textTheme.labelMedium?.copyWith(color: textColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
