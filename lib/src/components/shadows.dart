import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';

class TShadowStyle {
  static final verticalBoxShadow = [
    BoxShadow(
      color: TColors.shadow,
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2),
    ),
  ];

  static final horizontalBoxShadow = [];
}
