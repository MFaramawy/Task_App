import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/assets_manager.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:task/features/task/presentation/controller/controller.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TaskController>(
      init: Get.put(TaskController()),
      builder: (controller) => Scaffold(
        body: controller.screens[controller.index],
        bottomNavigationBar: StylishBottomBar(
          hasNotch: true,
          currentIndex: controller.index,
          fabLocation: StylishBarFabLocation.center,
          barAnimation: BarAnimation.blink,
          onTap: (value) => controller.changeBottomNavTab(value!),
          items: [
            AnimatedBarItems(
              title: const Text('Grocery'),
              icon: SvgPicture.asset(AssetsManager.grocery),
              selectedIcon: SvgPicture.asset(
                AssetsManager.grocery,
                color: AppColors.kPrimaryColor,
              ),
              selectedColor: AppColors.kPrimaryColor,
            ),
            AnimatedBarItems(
              title: const Text('News'),
              icon: const Icon(Icons.notifications_none),
              selectedIcon: const Icon(Icons.notifications_outlined),
              selectedColor: AppColors.kPrimaryColor,
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.kPrimaryColor,
          child: Padding(
            padding: EdgeInsets.only(top: 1.h),
            child: Stack(
              children: [
                Text(
                  '\$${controller.totalPrice.toInt()}',
                  style: TextStyle(
                    fontSize: 8.sp,
                  ),
                ),
                SizedBox(height: .1.h),
                SvgPicture.asset(AssetsManager.cart, color: Colors.white),
              ],
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
