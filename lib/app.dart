import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/app_strings.dart';
import 'package:task/config/routes/app_routes.dart';
import 'package:task/config/routes/routes_names.dart';
import 'package:task/core/components/responsive_widget.dart';
import 'package:task/features/task/presentation/cubit/task_cubit.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(),
      child: Responsive(
        screen: MaterialApp(
          title: AppStrings.appName,
          color: AppColors.kPrimaryColor,
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesNames.initialRoute,
          onGenerateRoute: AppRoutes.onGenerateRoute,
        ),
      ),
    );
  }
}
