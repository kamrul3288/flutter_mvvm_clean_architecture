import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, Color color, FontWeight fontWeight) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

TextStyle getRegularTextStyle(
    {double fontSize = FontSize.s12,
    String fontFamily = FontConstraints.fontFamily,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeightManager.regular}) {
  return _getTextStyle(fontSize, fontFamily, color, fontWeight);
}

TextStyle getLightTextStyle(
    {double fontSize = FontSize.s12,
    String fontFamily = FontConstraints.fontFamily,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeightManager.light}) {
  return _getTextStyle(fontSize, fontFamily, color, fontWeight);
}

TextStyle getMediumTextStyle(
    {double fontSize = FontSize.s12,
    String fontFamily = FontConstraints.fontFamily,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeightManager.medium}) {
  return _getTextStyle(fontSize, fontFamily, color, fontWeight);
}

TextStyle getSemiBoldTextStyle(
    {double fontSize = FontSize.s12,
    String fontFamily = FontConstraints.fontFamily,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeightManager.semiBold}) {
  return _getTextStyle(fontSize, fontFamily, color, fontWeight);
}

TextStyle getBoldTextStyle(
    {double fontSize = FontSize.s12,
    String fontFamily = FontConstraints.fontFamily,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeightManager.bold}) {
  return _getTextStyle(fontSize, fontFamily, color, fontWeight);
}
