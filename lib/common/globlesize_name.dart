import 'package:demo_app/common/golblecolor.dart';
import 'package:flutter/material.dart';

class CommonFont {
  static double largefontsize = 18;
  static double mediumfontsize = 14;
  static double smallfontsize = 12;
}

class Fontname {
  static String Nunito = 'Poppins';
}


class GradientBar extends StatelessWidget {
  final double height;
  final double width;
  final Gradient gradient;
  final BorderRadius borderRadius;

  const GradientBar({
    super.key,
    this.height = 25,
    this.width = 6,
    this.gradient = const LinearGradient(
      colors: [  AppColors.green,
        AppColors.darkBlue,
        AppColors.myBlue,], // Default gradient
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: gradient,
      ),
    );
  }
}