import 'package:flutter/material.dart';
import 'package:flutter_mvvm/res/text_style_manager.dart';
import 'package:flutter_mvvm/res/values_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(

      //app color theme
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primary,
      primaryColorDark: ColorManager.primary,
      disabledColor: ColorManager.gray,

      //card theme
      cardTheme: CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.gray,
          elevation: 4.0),

      //App bar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.primary,
          elevation: 4.0,
          titleTextStyle: getRegularTextStyle(
              color: ColorManager.white, fontSize: FontSize.s16)),

      // Button Theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(), // RoundedBorder //RectangularBorder
          disabledColor: ColorManager.gray,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.darkGray),
      //elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularTextStyle(color: ColorManager.white),
              primary: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)))),

      //text theme
      textTheme: TextTheme(
        headline1: getSemiBoldTextStyle(
            color: ColorManager.darkGray, fontSize: FontSize.s16),
        subtitle1: getSemiBoldTextStyle(
            color: ColorManager.lightGray, fontSize: FontSize.s14),
        caption: getRegularTextStyle(),
        bodyText1: getRegularTextStyle(),
      ),

      //text input theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        hintStyle: getRegularTextStyle(color: ColorManager.gray),
        labelStyle: getMediumTextStyle(),
        errorStyle: getRegularTextStyle(color: Colors.redAccent),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.gray, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.primary, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.redAccent, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.primary, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
      ));
}
