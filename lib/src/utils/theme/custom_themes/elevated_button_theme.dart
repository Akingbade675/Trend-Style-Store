import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';

/// -- Light & Dark Elevated Button Themes
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); // To avoid creating instances

  /// -- Light Theme
  static ElevatedButtonThemeData lightElevatedThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: TColors.primary,
      disabledForegroundColor: TColors.grey,
      disabledBackgroundColor: TColors.grey,
      side: const BorderSide(color: TColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 24),
      textStyle: const TextStyle(
          fontSize: 16, color: TColors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  /// -- Light Theme
  static ElevatedButtonThemeData darkElevatedThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: TColors.primary,
      disabledForegroundColor: TColors.grey,
      disabledBackgroundColor: TColors.grey,
      side: const BorderSide(color: TColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 24),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
