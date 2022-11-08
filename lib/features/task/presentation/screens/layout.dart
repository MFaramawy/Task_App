import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/assets_manager.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:task/features/task/presentation/cubit/task_cubit.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TaskCubit>(context);
    return BlocSelector<TaskCubit, TaskState, int>(
      selector: (state) => cubit.index,
      builder: (context, state) {
        return Scaffold(
          body: cubit.screens[cubit.index],
          bottomNavigationBar: StylishBottomBar(
            hasNotch: true,
            currentIndex: cubit.index,
            fabLocation: StylishBarFabLocation.center,
            barAnimation: BarAnimation.blink,
            onTap: (value) => cubit.changeBottomNavTab(value!),
            items: [
              AnimatedBarItems(
                title: const Text('Grocery'),
                selectedColor: AppColors.kPrimaryColor,
                icon: SvgPicture.asset(AssetsManager.grocery),
                selectedIcon: SvgPicture.asset(
                  AssetsManager.grocery,
                  color: AppColors.kPrimaryColor,
                ),
              ),
              AnimatedBarItems(
                title: const Text('News'),
                selectedColor: AppColors.kPrimaryColor,
                icon: const Icon(Icons.notifications_none),
                selectedIcon: const Icon(Icons.notifications_outlined),
              ),
              AnimatedBarItems(
                title: const Text('Favorites'),
                icon: const Icon(Icons.favorite_border),
                selectedIcon: const Icon(Icons.favorite_border),
                selectedColor: AppColors.kPrimaryColor,
              ),
              AnimatedBarItems(
                title: const Text('Cart'),
                selectedColor: AppColors.kPrimaryColor,
                icon: SvgPicture.asset(AssetsManager.wallet),
                selectedIcon: SvgPicture.asset(
                  AssetsManager.wallet,
                  color: AppColors.kPrimaryColor,
                ),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.kPrimaryColor,
            child: Padding(
              padding: EdgeInsets.only(top: 1.h),
              child: Stack(
                children: [
                  BlocSelector<TaskCubit, TaskState, double>(
                    selector: (state) => cubit.totalPrice,
                    builder: (context, state) {
                      return Text(
                        '\$${cubit.totalPrice.toInt()}',
                        style: TextStyle(
                          fontSize: 8.sp,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: .1.h),
                  SvgPicture.asset(AssetsManager.cart, color: Colors.white),
                ],
              ),
            ),
            onPressed: () {},
          ),
        );
      },
    );
  }
}
