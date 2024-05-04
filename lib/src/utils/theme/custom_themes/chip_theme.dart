import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    // backgroundColor: Colors.grey[200],
    disabledColor: TColors.grey.withOpacity(0.4),
    selectedColor: TColors.primary,
    padding: const EdgeInsets.all(12.0),
    checkmarkColor: TColors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    labelStyle: const TextStyle(
      color: TColors.dark,
      fontSize: 14.0,
    ),
    secondaryLabelStyle: const TextStyle(
      color: TColors.dark,
      fontSize: 14.0,
    ),
    brightness: Brightness.light,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    // backgroundColor: Colors.grey[800],
    disabledColor: TColors.darkerGrey,
    selectedColor: TColors.primary,
    padding: const EdgeInsets.all(12.0),
    checkmarkColor: TColors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    labelStyle: const TextStyle(
      color: TColors.white,
      fontSize: 14.0,
    ),
    secondaryLabelStyle: const TextStyle(
      color: TColors.white,
      fontSize: 14.0,
    ),
    brightness: Brightness.dark,
  );
}
