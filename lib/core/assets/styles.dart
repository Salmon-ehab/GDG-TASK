import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/assets/colors.dart';

abstract class AppStyle {
  static TextStyle font22Black1w600 = TextStyle(
    color: AppColor.blackColor1,
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle font14Grey2w400 = TextStyle(
    color: AppColor.greyColor2,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.inter().fontFamily,
  );
  static TextStyle font12Grey1w400 = TextStyle(
    color: AppColor.greyColor1,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle font12Black2w600 = TextStyle(
    color: AppColor.blackColor2,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle font18Black1w600 = TextStyle(
    color: AppColor.blackColor1,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle font12white1w600 = TextStyle(
    color: AppColor.whiteColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle font16black1w600 = TextStyle(
    color: AppColor.blackColor1,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle font12green1w400 = TextStyle(
    color: AppColor.greenColor1,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle font9Grey1w500 = TextStyle(
    color: AppColor.greyColor1,
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle font8green1w500 = TextStyle(
    color: AppColor.greenColor1,
    fontSize: 8.sp,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle font8grey1w500 = TextStyle(
    color: AppColor.greyColor1,
    fontSize: 8.sp,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.inter().fontFamily,
  );
}
