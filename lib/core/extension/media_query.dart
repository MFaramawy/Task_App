import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get w => MediaQuery.of(this).size.width;
  double get h => MediaQuery.of(this).size.height;
  double get r => MediaQuery.of(this).size.width * 0.20;
  double get bottom => MediaQuery.of(this).viewInsets.bottom;
  double get toPadding => MediaQuery.of(this).viewPadding.top;
}
