import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:task/features/task/domain/entities/deals_of_day.dart';
import 'package:task/features/task/presentation/controller/controller.dart';

class DealsOfTheDayItem extends StatelessWidget {
  const DealsOfTheDayItem({
    Key? key,
    required this.color,
    required this.index,
    required this.dealsOfDay,
  }) : super(key: key);

  final int index;
  final Color color;
  final DealsOfDay dealsOfDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.w,
      height: 13.h,
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            children: [
              Container(
                width: 25.w,
                height: 12.h,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              SizedBox(width: 1.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40.w,
                    child: Text(
                      dealsOfDay.title,
                      maxLines: 1,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  SizedBox(
                    width: 40.w,
                    child: Text(
                      'Pieces ${dealsOfDay.pieces}',
                      maxLines: 1,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 9.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 4.w,
                      ),
                      Text(
                        dealsOfDay.distance,
                        style: TextStyle(fontSize: 9.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    children: [
                      Text(
                        '\$ ${dealsOfDay.discount}',
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.kPrimaryColor,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '\$ ${dealsOfDay.price}',
                        style: TextStyle(
                          fontSize: 10.sp,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: -1.5.h,
            left: -3.3.w,
            child: GetBuilder<TaskController>(
              builder: (controller) => InkWell(
                onTap: () => controller.toggleFavoriteIcon(index),
                child: Container(
                  width: 8.w,
                  height: 3.8.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    controller.isFavorite[index]
                        ? Icons.favorite
                        : Icons.favorite_border,
                    size: 4.5.w,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
