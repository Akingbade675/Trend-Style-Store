import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class TSpacer {
  // -- Horizontal Spacing --
  static SizedBox hSpacing(double width) => SizedBox(width: width);

  // -- Vertical Spacing --
  static SizedBox vSpacing(double height) => SizedBox(height: height);

  static EdgeInsets paddingWithAppHeight =
      EdgeInsets.all(TSizes.defaultSpace).copyWith(top: TSizes.appBarHeight);
}
