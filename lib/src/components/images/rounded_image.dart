import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  final double width, height;
  final String imageUrl;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final VoidCallback? onTap;
  final bool isNetworkImage;

  const TRoundedImage({
    super.key,
    this.width = double.infinity,
    this.height = 300,
    required this.imageUrl,
    this.border,
    this.backgroundColor, //TColors.grey,
    this.fit = BoxFit.fitWidth,
    this.padding,
    this.borderRadius = TSizes.md,
    this.onTap,
    this.isNetworkImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
