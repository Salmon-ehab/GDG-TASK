import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/assets/colors.dart';
import 'package:task/core/assets/styles.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.tealColor2,
          hintText: 'Search doctor, drugs, articles...',
          hintStyle: AppStyle.font12Grey1w400,
          prefixIcon: Icon(Icons.search, color: AppColor.greyColor1),
          contentPadding: EdgeInsets.symmetric(vertical: 12.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
