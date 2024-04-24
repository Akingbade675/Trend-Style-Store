import 'package:flutter/material.dart';
import 'package:trend_style_store/src/utils/device/device_utility.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => mediaQuery.size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  double get statusBarHeight => TDeviceUtils.getStatusBarHeight(this);
  double get bottomBarHeight => TDeviceUtils.getNavigationBarHeight(this);
  bool get isDarkMode => theme.brightness == Brightness.dark;
}
