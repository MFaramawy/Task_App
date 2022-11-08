import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';
import 'package:task/features/task/domain/entities/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.color, required this.category})
      : super(key: key);
  final Category category;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 15.5.w,
          height: 7.3.h,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        SizedBox(height: .5.h),
        Text(
          category.title,
          style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
