import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/assets/colors.dart';
import 'package:task/core/assets/images.dart';
import 'package:task/feature/home_screen/presentation/views/home_page.dart';
import 'package:task/feature/home_screen/presentation/views/widgets/home_body.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _currentIndex = 0;
  final List<Widget> screens = const [
    HomeBody(),
    HomeBody(),
    HomeBody(),
    HomeBody(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.whiteColor,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColor.whiteColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int y) {
            setState(() {
              _currentIndex = y;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages().homeImage,
                  height: 24.h,
                  width: 24.w,
                  color: _currentIndex == 0 ?AppColor.greenColor1 : AppColor.greyColor1,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages().messageImage,
                  height: 24.h,
                  width: 24.w,
                  color: _currentIndex == 1 ?AppColor.greenColor1 : AppColor.greyColor1,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages().calenderImage,
                  height: 24.h,
                  width: 24.w,
                  color: _currentIndex == 2 ?AppColor.greenColor1 : AppColor.greyColor1,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages().profileImage,
                  height: 24.h,
                  width: 24.w,
                  color: _currentIndex == 3 ?AppColor.greenColor1 : AppColor.greyColor1,

                ),
                label: ''),
          ],
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: screens,
        ));
  }
}
