import 'package:flutter/material.dart';
import 'package:travel_guide/screens/LandingScreen.dart';
import 'dart:ui';
import 'package:travel_guide/utils/constant.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Project',
     theme: ThemeData(
       primaryColor: COLOR_WHITE,
       textTheme: screenWidth<500? TEXT_THEME_SMALL: TEXT_THEME_DEFAULT),
       home: LandingScreen(),
    );
  }
}
