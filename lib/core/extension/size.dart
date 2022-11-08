import 'package:task/core/components/responsive_widget.dart';

extension SizeExtension on num {
  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  double get h => this * ResponsiveSizes.screenHeight! / 100;

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.w -> will take 20% of the screen's width
  double get w => this * ResponsiveSizes.screenWidth! / 100;

  ///
  // Radius
  double get r => this * ResponsiveSizes.screenWidth! / 100;

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  double get sp => this * (ResponsiveSizes.screenWidth! / 3) / 100;
}
