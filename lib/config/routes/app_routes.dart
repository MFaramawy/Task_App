import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:task/core/utils/app_strings.dart';
import 'package:task/config/routes/routes_names.dart';
import 'package:task/features/task/presentation/screens/layout.dart';
import 'package:task/features/task/presentation/screens/welcome_screen.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.initialRoute:
        return CupertinoPageRoute(builder: (_) => const WelcomeScreen());
      case RoutesNames.layout:
        return CupertinoPageRoute(builder: (_) => const LayoutScreen());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return CupertinoPageRoute(
      builder: ((context) =>
          const Scaffold(body: Center(child: Text(AppStrings.noRouteFound)))),
    );
  }
}
