import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TCircularImage extends StatelessWidget {
  final double width, height, padding;
  final Color? backgroundColor;
  final Color? overlayColor;
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;

  const TCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
    this.backgroundColor,
    this.overlayColor,
    this.fit = BoxFit.contain,
    required this.image,
    this.isNetworkImage = false,
  });

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? (dark ? TColors.dark : TColors.white),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(width / 2),
          child: Image(
            fit: fit,
            width: width,
            height: height,
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
            color: overlayColor, // dark ? TColors.dark : TColors.white,
          ),
        ),
      ),
    );
  }
}
