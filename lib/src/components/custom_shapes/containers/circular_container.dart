import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Color backgroundColor;
  final double padding;
  final double radius;
  final Border? border;
  final Widget? child;

  const TCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.padding = 0,
    this.height = 400,
    this.radius = 400,
    this.backgroundColor = TColors.white,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
