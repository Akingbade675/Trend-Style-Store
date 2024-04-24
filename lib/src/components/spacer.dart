import 'package:flutter/material.dart';

class TSpacer extends StatelessWidget {
  final double? height;
  final double? width;

  const TSpacer({super.key, required this.height, required this.width});

  factory TSpacer.hSpacing(double height) {
    return TSpacer(height: height, width: null);
  }

  factory TSpacer.vSpacing(double width) {
    return TSpacer(height: null, width: width);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
