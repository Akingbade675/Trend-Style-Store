import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TCircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final bool showBorder;
  final Color backgroundColor, borderColor;
  final EdgeInsetsGeometry? padding, margin;
  final double radius;
  final Widget? child;

  const TCircularContainer({
    super.key,
    this.child,
    this.width,
    this.padding,
    this.height,
    this.radius = TSizes.cardRadiusLg,
    this.backgroundColor = TColors.white,
    this.showBorder = false,
    this.borderColor = TColors.darkGrey,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
