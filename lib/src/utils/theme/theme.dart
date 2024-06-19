import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/theme/custom_themes/appbar_theme.dart';
import 'package:trend_style_store/src/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:trend_style_store/src/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:trend_style_store/src/utils/theme/custom_themes/chip_theme.dart';
import 'package:trend_style_store/src/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:trend_style_store/src/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:trend_style_store/src/utils/theme/custom_themes/text_field_theme.dart';
import 'package:trend_style_store/src/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  /// -- Light Theme --
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Sora',
    brightness: Brightness.light,
    primaryColor: Colors.lightGreen,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.outlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedThemeData,
  );

  /// -- Dark Theme --
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Sora',
    brightness: Brightness.dark,
    primaryColor: Colors.lightGreen,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: TColors.dark,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.outlinedButtonThemeDark,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedThemeData,
  );
}
