import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    backgroundColor: Colors.grey[200],
    disabledColor: Colors.grey[400],
    selectedColor: Colors.blue,
    secondarySelectedColor: Colors.blue[200],
    padding: const EdgeInsets.all(8.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    labelStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14.0,
    ),
    secondaryLabelStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14.0,
    ),
    brightness: Brightness.light,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    backgroundColor: Colors.grey[800],
    disabledColor: Colors.grey[600],
    selectedColor: Colors.blue,
    secondarySelectedColor: Colors.blue[200],
    padding: const EdgeInsets.all(8.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    labelStyle: const TextStyle(
      color: Colors.white,
      fontSize: 14.0,
    ),
    secondaryLabelStyle: const TextStyle(
      color: Colors.white,
      fontSize: 14.0,
    ),
    brightness: Brightness.dark,
  );
}
