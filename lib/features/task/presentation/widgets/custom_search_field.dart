import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InputBorder border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade400, width: .7),
      borderRadius: BorderRadius.circular(4.r),
    );
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        hintText: 'Search in thousands of products',
        border: border,
        focusedBorder: border,
        disabledBorder: border,
        enabledBorder: border,
        prefixIcon: Icon(Icons.search, size: 7.w),
      ),
    );
  }
}
