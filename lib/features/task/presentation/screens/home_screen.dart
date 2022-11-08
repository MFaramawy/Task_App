import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/features/task/data/repositories/data.dart';
import 'package:task/features/task/presentation/widgets/deals_item.dart';
import 'package:task/features/task/presentation/widgets/custom_shape.dart';
import 'package:task/features/task/presentation/widgets/address_item.dart';
import 'package:task/features/task/presentation/controller/controller.dart';
import 'package:task/features/task/presentation/widgets/category_item.dart';
import 'package:task/features/task/presentation/widgets/custom_search_field.dart';
import 'package:task/features/task/presentation/widgets/deals_of_the_day_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.grey.shade50,
        title: const CustomShape(text: 'Mustafa St.'),
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(8.h),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: const CustomSearchField(),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Address List
            SizedBox(
              height: 8.h,
              child: ListView.separated(
                itemCount: CustomData.addressData.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => AddressItem(
                  color: AppColors.colors[index],
                  address: CustomData.addressData[index],
                ),
                separatorBuilder: (context, index) => SizedBox(width: 6.w),
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              'Explore by Category',
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.h),
            // Category List
            SizedBox(
              height: 10.h,
              child: ListView.separated(
                itemCount: CustomData.categoryData.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => CategoryItem(
                  color: AppColors.colors[index],
                  category: CustomData.categoryData[index],
                ),
                separatorBuilder: (context, index) => SizedBox(width: 6.w),
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              'Deals of the day',
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.h),
            // Deals Of The Day List
            SizedBox(
              height: 13.h,
              child: ListView.separated(
                itemCount: CustomData.dealsOfDayData.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => GetBuilder<TaskController>(
                  builder: (controller) => DealsOfTheDayItem(
                    index: index,
                    color: AppColors.colors[index],
                    dealsOfDay: CustomData.dealsOfDayData[index],
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(width: 6.w),
              ),
            ),
            SizedBox(height: 3.h),
            const DealsItem(),
          ],
        ),
      ),
    );
  }
}
