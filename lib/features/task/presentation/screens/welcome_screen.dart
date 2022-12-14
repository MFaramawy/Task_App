import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/assets_manager.dart';
import 'package:task/core/extension/media_query.dart';
import 'package:task/features/task/presentation/cubit/task_cubit.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TaskCubit>(context)
      ..getTotalPrice()
      ..delayToLayout(context);
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
