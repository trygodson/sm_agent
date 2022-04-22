/*
this is global style
This file is used to styling a whole application
 */

import 'package:flutter/material.dart';
import 'package:smart_agent/theme/color.dart';

class GlobalStyle {
  static const TextStyle titleStyle =
      TextStyle(color: primary, fontWeight: FontWeight.w700, fontSize: 30);
  static const TextStyle logoStyle =
      TextStyle(color: primary, fontWeight: FontWeight.w400, fontSize: 30);
  static const TextStyle h2Style =
      TextStyle(color: primary, fontWeight: FontWeight.w600, fontSize: 20);
  static const TextStyle h1Style =
      TextStyle(color: primary, fontWeight: FontWeight.w700, fontSize: 23);

  static const TextStyle normalStyle =
      TextStyle(color: primary, fontSize: 14, fontWeight: FontWeight.w300);

  static const TextStyle blueStyle =
      TextStyle(color: darker, fontSize: 14, fontWeight: FontWeight.w400);
  static const TextStyle underlineStyle = TextStyle(
      color: primary,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline);

  static const TextStyle subTextStyle =
      TextStyle(color: primary, fontSize: 12, fontWeight: FontWeight.w300);
  static const TextStyle bottomNavStyle =
      TextStyle(color: lite, fontSize: 11, fontWeight: FontWeight.w300);

  static const TextStyle interestTitleStyle =
      TextStyle(color: primary, fontSize: 12, fontWeight: FontWeight.w500);

  static const TextStyle boldStyle =
      TextStyle(color: primary, fontSize: 14, fontWeight: FontWeight.w500);

  static TextStyle boldStyleDim = const TextStyle(
      color: Color.fromARGB(165, 0, 0, 0),
      fontSize: 14,
      fontWeight: FontWeight.w500);

  static TextStyle subTitleStyle = TextStyle(
      color: primary.withOpacity(0.8),
      fontSize: 16,
      fontWeight: FontWeight.w600);

  static TextStyle underlineTitleStyle = TextStyle(
      color: primary.withOpacity(0.8),
      fontSize: 16,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w600);
  static const TextStyle subTitleStylelite =
      TextStyle(color: lite, fontSize: 14, fontWeight: FontWeight.w300);
  static const TextStyle uploadStyle =
      TextStyle(color: lite, fontSize: 18, fontWeight: FontWeight.w500);

  static const TextStyle lightButtonStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: primary);
  static const TextStyle darkButtonStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: lite);
  static const TextStyle smallLightButtonStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: primary);
}
