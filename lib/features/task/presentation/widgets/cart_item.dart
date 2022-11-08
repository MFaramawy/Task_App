import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/features/task/domain/entities/cart.dart';
import 'package:task/features/task/presentation/cubit/task_cubit.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.cart,
    required this.color,
    required this.index,
  }) : super(key: key);

  final Cart cart;
  final int index;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TaskCubit>(context);
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
          Row(
            children: [
              InkWell(
                onTap: () => cubit.decrement(index),
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
              BlocSelector<TaskCubit, TaskState, double>(
                selector: (state) => cubit.totalPrice,
                builder: (context, state) {
                  return Text(
                    cart.quantity.toString(),
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              SizedBox(width: 2.w),
              InkWell(
                onTap: () => cubit.increment(index),
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
        ],
      ),
    );
  }
}
