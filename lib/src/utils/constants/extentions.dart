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

  void pop() => Navigator.of(this).pop();

  void popUntil(String routeName) =>
      Navigator.of(this).popUntil(ModalRoute.withName(routeName));

  void pushNamed(String routeName) => Navigator.of(this).pushNamed(routeName);

  void pushReplacementNamed(String routeName) =>
      Navigator.of(this).pushReplacementNamed(routeName);

  void pushNamedAndRemoveUntil(String routeName) =>
      Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);

  void pushAndRemoveUntil(Widget widget1) =>
      Navigator.of(this).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => widget1), (route) => false);

  void push(Widget widget) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (_) => widget));
}
