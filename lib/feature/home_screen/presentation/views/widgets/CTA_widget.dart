import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/assets/colors.dart';
import 'package:task/core/assets/images.dart';
import 'package:task/core/assets/styles.dart';

class CtaWidget extends StatelessWidget {
  const CtaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.h,
      width: 335.w,
      decoration: BoxDecoration(
        color: AppColor.tealColor1,
        borderRadius: BorderRadius.all(Radius.circular(10.r))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 168.w,
                    child: Text(
                      "Early protection for your family health",
                      style: AppStyle.font18Black1w600,
                    )),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 29.h,
                    width: 97.w,
                    decoration: BoxDecoration(
                        color: AppColor.greenColor1,
                        borderRadius: BorderRadius.all(Radius.circular(20.r))
                    ),
                    child: Center(child: Text("Learn more",style: AppStyle.font12white1w600)),
                  ),
                )

              ],
            ),
          ),
          Image.asset(
            AppImages().ctaImage,
            height: 135.h,
            width: 121.w,
          )
        ],
      ),
    );
  }
}
