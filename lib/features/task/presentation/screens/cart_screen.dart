import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:task/features/task/data/repositories/data.dart';
import 'package:task/features/task/presentation/widgets/cart_item.dart';
import 'package:task/features/task/presentation/widgets/custom_shape.dart';
import 'package:task/features/task/presentation/controller/controller.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      AppColors.color,
      AppColors.color1,
      AppColors.color2,
      AppColors.color3,
      AppColors.color4,
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.grey.shade50,
        title: const CustomShape(text: 'Oxford Street'),
        actions: [
          CircleAvatar(
            radius: 4.5.w,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 4.3.w,
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(width: 2.w),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h),
            Text(
              'Cart',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.h),
            // Cart List
            Expanded(
              child: ListView.separated(
                itemCount: CustomData.cartData.length,
                separatorBuilder: (context, index) => SizedBox(height: 1.5.h),
                itemBuilder: (context, index) => GetBuilder<TaskController>(
                  builder: (controller) => CartItem(
                    onTapPlus: () => controller.increment(index),
                    onTapMinus: () => controller.decrement(index),
                    color: colors[index],
                    cart: CustomData.cartData[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
