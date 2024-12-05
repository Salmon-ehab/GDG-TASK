import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/assets/images.dart';
import 'package:task/core/assets/styles.dart';
import 'package:task/feature/home_screen/presentation/views/widgets/CTA_widget.dart';
import 'package:task/feature/home_screen/presentation/views/widgets/Top_headline_widget.dart';
import 'package:task/feature/home_screen/presentation/views/widgets/choose_category_widget.dart';
import 'package:task/feature/home_screen/presentation/views/widgets/doctor_info_widget.dart';
import 'package:task/feature/home_screen/presentation/views/widgets/search_widget.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(top: 64.h, left: 24.w, right: 24.w,bottom: 15.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 176.w,
                  child: Text(
                    "Find your desire healt solution",
                    style: AppStyle.font22Black1w600,
                  ),
                ),
                InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      AppImages().notificationImage,
                      height: 24.h,
                      width: 24.w,
                    ))
              ],
            ),
            SizedBox(height: 20.h,),
            SearchWidget(),
            SizedBox(height: 15.h,),
            ChooseCategoryWidget(),
            SizedBox(height: 15.h,),
            CtaWidget(),
            SizedBox(height: 15.h,),
            TopHeadlineWidget(headLine:"Top Doctor", headline2: "See all"),
            SizedBox(height: 15.h,),
            DoctorInfoWidget(),
            SizedBox(height: 15.h,),
            TopHeadlineWidget(headLine:"Health article", headline2: "See all"),
            SizedBox(height: 15.h,),
            DoctorInfoWidget(),

          ],
        ),
      ),
    );
  }
}
