import 'package:flutter/material.dart';
import 'package:smart_agent/theme/color.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.dark(primary: yellow),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: appBgColor,
    primaryColor: Colors.black,
    colorScheme: ColorScheme.light(primary: primary),
  );
}
