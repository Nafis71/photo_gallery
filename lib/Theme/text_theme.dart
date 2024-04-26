import 'package:flutter/material.dart';

class TextThemes {
  static TextStyle getTextStyle(
      {Color color = Colors.black,
      double fontSize = 15.00,
      var fontWeight = FontWeight.w400,
      String fontFamily = 'Roboto',
      double letterSpacing = 0}) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing);
  }
}
