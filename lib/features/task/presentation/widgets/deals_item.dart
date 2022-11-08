import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/extension/media_query.dart';

class DealsItem extends StatelessWidget {
  const DealsItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17.h,
      width: context.w,
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        color: const Color(0xfff9bdad),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        children: [
          Container(
            width: 35.w,
            height: 13.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
          SizedBox(width: 3.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 1.h),
              SizedBox(
                width: 50.w,
                child: Text(
                  'Mega',
                  maxLines: 1,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(
                width: 50.w,
                child: RichText(
                  text: TextSpan(
                    text: 'WHOPP',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: 'E',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'R',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    '\$ 17',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '\$ 32',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Text(
                '* Available until 24 December 2020',
                style: TextStyle(
                  fontSize: 9.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 1.h),
            ],
          ),
        ],
      ),
    );
  }
}
