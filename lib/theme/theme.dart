import 'package:flutter/material.dart';
import 'package:dweller/theme/color.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.dark(primary: yellow),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: appBgColor,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.light(primary: primary),
  );
}
