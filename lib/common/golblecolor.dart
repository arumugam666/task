import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static const Color programsBox = Color(0xFFFFF6D5);
  static const Color mentorsBox = Color(0xFFD7FAF4);
  static const Color menteesBox = Color(0xFFE9E6FB);
  static const Color darkBlue = Color(0xFF1B3C73);
  static const Color lightBlue = Color(0xFFB3D4FC);
  static const Color buttonBlue = Color(0xFFD8E9FF);
  static const Color whiteBackground = Color(0xFFFFFFFF);
  static const Color notificationDot = Color(0xFFEC5C9B);
  static const Color searchIcon = Color(0xFF0066CC);
  static const Color star = Color.fromARGB(255, 238, 234, 31);
  static const Color yello = Color(0xFFFFBB00);
  static const Color myBlue = Color(0xFF1954BF);
  static const Color myblack = Colors.black;
  static const Color green = Color.fromARGB(255, 6, 233, 127);
    static const Color read = Colors.red;
      static const Color grey = Colors.grey;
}

class CustomGradienterror {
  static Gradient fromColor() {
    return LinearGradient(
      colors: [
        AppColors.green,
        AppColors.darkBlue,
        AppColors.myBlue,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}
