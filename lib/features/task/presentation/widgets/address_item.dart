import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';
import 'package:task/features/task/domain/entities/address.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({
    Key? key,
    required this.color,
    required this.address,
  }) : super(key: key);
  final Address address;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.w,
      height: 8.h,
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
          border: Border.all(width: .5, color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(4.r)),
      child: Row(
        children: [
          Container(
            width: 13.w,
            height: 13.w,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
          SizedBox(width: 1.w),
          SizedBox(
            width: 25.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  address.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  address.subTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 9.sp,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  address.desc,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 9.sp,
                    overflow: TextOverflow.ellipsis,
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
