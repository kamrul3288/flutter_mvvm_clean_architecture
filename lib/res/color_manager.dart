
import 'package:flutter/material.dart';

class ColorManager{
  static Color primary = HexColor.fromHex("#3f51b5");
  static Color darkGray = HexColor.fromHex("#bdbdbd");
  static Color gray = HexColor.fromHex("#e0e0e0");
  static Color lightGray = HexColor.fromHex("#f5f5f5");
  static Color black = HexColor.fromHex("#000000");
  static Color white = HexColor.fromHex("#ffffff");
}

extension  HexColor on Color{
  static  Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll("#", "");
    if(hexColorString.length == 6){
      hexColorString = "FF"+hexColorString;
    }
    return Color(int.parse(hexColorString,radix: 16));
  }
}