import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/config/routes/app_routes.dart';
import 'package:task/config/routes/routes_names.dart';
import 'package:task/core/components/responsive_widget.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      screen: GetMaterialApp(
        title: 'Task',
        color: AppColors.kPrimaryColor,
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesNames.initialRoute,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
