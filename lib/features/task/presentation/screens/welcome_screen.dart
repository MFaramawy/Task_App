import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:task/core/utils/assets_manager.dart';
import 'package:task/core/extension/media_query.dart';
import 'package:task/config/routes/routes_names.dart';
import 'package:task/features/task/presentation/controller/controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TaskController()).getTotalPrice();
    Future.delayed(
      const Duration(seconds: 4),
      () => Get.offNamed(RoutesNames.layout),
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: context.w,
            height: context.h / 4.5,
            child: Image(
              image: AssetImage(AssetsManager.appLogo),
              width: context.w / 1.7,
              height: context.h / 4.5,
            ),
          ),
        ],
      ),
    );
  }
}
