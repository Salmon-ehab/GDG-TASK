import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/assets/images.dart';
import 'package:task/core/assets/styles.dart';

class ChooseCategoryWidget extends StatelessWidget {
  const ChooseCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        chooseCategory(AppImages().doctorImage, "Doctor"),
        chooseCategory(AppImages().pharmacyImage, "Pharmacy"),
        chooseCategory(AppImages().hospitalImage, "Hospital"),
        chooseCategory(AppImages().ambulanceImage, "Ambulance"),
      ],
    );
  }

  Widget chooseCategory(String image, String title) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          SvgPicture.asset(
            image,
            height: 32.h,
            width: 32.w,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            title,
            style: AppStyle.font14Grey2w400,
          )
        ],
      ),
    );
  }
}
