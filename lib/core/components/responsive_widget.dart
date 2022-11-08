import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key, required this.screen}) : super(key: key);

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      ResponsiveSizes.screenWidth = constraints.maxWidth;
      ResponsiveSizes.screenHeight = constraints.maxHeight;
      ResponsiveSizes.setScreenSize(constraints);
      return screen;
    });
  }
}

class ResponsiveSizes {
  static double? screenWidth;
  static double? screenHeight;
  static void setScreenSize(BoxConstraints constraints) {
    screenWidth = constraints.maxWidth;
    screenHeight = constraints.maxHeight;
  }
}
