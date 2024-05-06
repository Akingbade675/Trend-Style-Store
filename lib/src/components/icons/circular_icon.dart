import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';

class TCircularIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final double? width, height, size;
  final Color? color, backgroundColor;

  const TCircularIcon({
    super.key,
    required this.icon,
    this.onPressed,
    this.width,
    this.height,
    this.size,
    this.color,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ??
            (dark
                ? TColors.dark.withOpacity(0.9)
                : TColors.white.withOpacity(0.9)),
      ),
      child: IconButton(
        onPressed: onPressed ?? () {},
        icon: Icon(icon, color: color),
        iconSize: size,
      ),
    );
  }
}
