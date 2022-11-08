import 'package:flutter/material.dart';

extension TextTheme on BuildContext {
  // Body Text Theme
  TextStyle get bodyS => Theme.of(this).textTheme.bodySmall!;
  TextStyle get bodyL => Theme.of(this).textTheme.bodyLarge!;
  TextStyle get bodyM => Theme.of(this).textTheme.bodyMedium!;
  // Title Text Theme
  TextStyle get titleS => Theme.of(this).textTheme.titleSmall!;
  TextStyle get titleL => Theme.of(this).textTheme.titleLarge!;
  TextStyle get titleM => Theme.of(this).textTheme.titleMedium!;
  // Label Text Theme
  TextStyle get labelS => Theme.of(this).textTheme.labelSmall!;
  TextStyle get labelL => Theme.of(this).textTheme.labelLarge!;
  TextStyle get labelM => Theme.of(this).textTheme.labelMedium!;
  // Display Text Theme
  TextStyle get displayS => Theme.of(this).textTheme.displaySmall!;
  TextStyle get displayL => Theme.of(this).textTheme.displayLarge!;
  TextStyle get displayM => Theme.of(this).textTheme.displayMedium!;
  // HeadLine Text Theme
  TextStyle get headlineS => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get headlineL => Theme.of(this).textTheme.headlineLarge!;
  TextStyle get headlineM => Theme.of(this).textTheme.headlineMedium!;
}
