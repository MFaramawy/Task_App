import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/features/task/domain/entities/cart.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:task/features/task/presentation/controller/controller.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.cart,
    required this.color,
    required this.onTapPlus,
    required this.onTapMinus,
  }) : super(key: key);

  final Cart cart;
  final Color color;
  final void Function()? onTapPlus;
  final void Function()? onTapMinus;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.5.h,
      width: double.infinity,
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.r),
      ),
      child: Row(
        children: [
          Container(
            width: 16.5.w,
            height: 8.5.h,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
          SizedBox(width: 2.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart.title,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 1.h),
              Text(
                cart.desc,
                style: TextStyle(
                  fontSize: 9.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 1.h),
              Text(
                '\$ ${cart.price}',
                style: TextStyle(
                  fontSize: 18.sp,
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(),
          GetBuilder<TaskController>(
            builder: (controller) => Row(
              children: [
                InkWell(
                  onTap: onTapMinus,
                  borderRadius: BorderRadius.circular(3.r),
                  child: SizedBox(
                    width: 43,
                    height: 43,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(3.r),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.blue.shade600,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 2.w),
                Text(
                  cart.quantity.toString(),
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 2.w),
                InkWell(
                  onTap: onTapPlus,
                  borderRadius: BorderRadius.circular(3.r),
                  child: SizedBox(
                    width: 43,
                    height: 43,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(3.r),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.blue.shade600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
