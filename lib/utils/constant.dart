import 'package:flutter/material.dart';

const COLOR_BLACK = Color.fromRGBO(48,47,48,1.0);
const COLOR_GREY = Color.fromRGBO(141,141,141,1.0);

const COLOR_WHITE = Colors.white;
const COLOR_DARK_BLUE = Color.fromRGBO(20,25,45,1.0);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  displayLarge: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700,fontSize: 26),
  displayMedium: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700,fontSize: 22),
  displaySmall: TextStyle(
    color: COLOR_BLACK,fontWeight: FontWeight.w700,fontSize: 20),
   headlineMedium: TextStyle(
    color: COLOR_BLACK ,fontWeight: FontWeight.w700,fontSize: 16),
   headlineSmall: TextStyle(
       color: COLOR_BLACK ,fontWeight: FontWeight.w700,fontSize: 14),
   titleLarge: TextStyle(
       color: COLOR_BLACK ,fontWeight: FontWeight.w700,fontSize: 12),
   bodyLarge: TextStyle(
     color: COLOR_BLACK,fontSize: 14, fontWeight: FontWeight.w500,height: 1.5),
  bodyMedium: TextStyle(
  color: COLOR_GREY,fontSize: 14,fontWeight: FontWeight.w500,height: 1.5),
  titleMedium:
    TextStyle(color: COLOR_BLACK,fontSize: 12,fontWeight: FontWeight.w400),
  titleSmall:
    TextStyle(color: COLOR_GREY,fontSize: 12,fontWeight: FontWeight.w400),);

const TextTheme TEXT_THEME_SMALL = TextTheme(
  displayLarge: TextStyle(
      color: COLOR_BLACK, fontWeight: FontWeight.w700,fontSize: 22),
  displayMedium: TextStyle(
      color: COLOR_BLACK, fontWeight: FontWeight.w700,fontSize: 20),
  displaySmall: TextStyle(
      color: COLOR_BLACK,fontWeight: FontWeight.w700,fontSize: 18),
  headlineMedium: TextStyle(
      color: COLOR_BLACK ,fontWeight: FontWeight.w700,fontSize: 14),
  headlineSmall: TextStyle(
      color: COLOR_BLACK ,fontWeight: FontWeight.w700,fontSize: 12),
  titleLarge: TextStyle(
      color: COLOR_BLACK ,fontWeight: FontWeight.w700,fontSize: 10),
  bodyLarge: TextStyle(
      color: COLOR_BLACK,fontSize: 12, fontWeight: FontWeight.w500,height: 1.5),
  bodyMedium: TextStyle(
      color: COLOR_GREY,fontSize: 12,fontWeight: FontWeight.w500,height: 1.5),
  titleMedium:
  TextStyle(color: COLOR_BLACK,fontSize: 10,fontWeight: FontWeight.w400),
  titleSmall:
  TextStyle(color: COLOR_GREY,fontSize: 10,fontWeight: FontWeight.w400),);