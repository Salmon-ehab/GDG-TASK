import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/assets/colors.dart';
import 'package:task/core/assets/images.dart';
import 'package:task/core/assets/styles.dart';

class DoctorInfoWidget extends StatelessWidget {
   DoctorInfoWidget({super.key});

  final List<Map<String, String>> doctors = [
    {
      'image': AppImages().avatarImage,
      'name': 'Dr. Marcus Horizon',
      'specialization': 'Cardiologist',
      'rating': '4.7',
      'location': '800m away',
    },
    {
      'image': AppImages().avatarImage2,
      'name': 'Dr. Maria Elena',
      'specialization': 'Psychologist',
      'rating': '4.9',
      'location': '1,5km away',
    },
    {
      'image': AppImages().avatarImage3,
      'name': 'Dr. Stevi Jessi',
      'specialization': 'Orthopedist',
      'rating': '4.8',
      'location': '2km away',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return doctorInfo(
            doctor['image']!,
            doctor['name']!,
            doctor['specialization']!,
            doctor['rating']!,
            doctor['location']!,
          );
        }, separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15.w,
          );
      },
      ),
    );
  }

  Widget doctorInfo(String docImage, String docName, String spec, String rate,
      String location) {
    return Container(
      height: 173.h,
      width: 121.w,
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          border: Border.all(color: AppColor.tealColor1, width: 1.w),
          borderRadius: BorderRadius.all(Radius.circular(12.r))),
      child: Padding(
        padding: EdgeInsets.only(top: 20.h, bottom: 15.h, left: 10.w,right: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                docImage,
                height: 71.h,
                width: 71.w,
              ),
            ),
            Text(
              docName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyle.font12Black2w600,
            ),
            Text(
              spec,
              style: AppStyle.font9Grey1w500,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 13.h,
                  width: 28.w,
                  decoration: BoxDecoration(
                      color: AppColor.tealColor1,
                      borderRadius: BorderRadius.all(Radius.circular(3.r))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: AppColor.greenColor1,
                        size: 8.sp,
                      ),
                      Text(
                        rate,
                        style: AppStyle.font8green1w500,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: AppColor.greyColor1,
                      size: 8.sp,
                    ),
                    Text(
                      location,
                      style: AppStyle.font8grey1w500,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
