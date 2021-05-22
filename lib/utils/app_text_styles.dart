import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle title = GoogleFonts.roboto(
      color: AppColors.dark, fontSize: 18, fontWeight: FontWeight.bold);

  static final TextStyle subTitle = GoogleFonts.roboto(
      color: AppColors.dark, fontSize: 17, fontWeight: FontWeight.w400);

  static final TextStyle titleButton = GoogleFonts.roboto(
      color: AppColors.dark, fontSize: 17, fontWeight: FontWeight.w300);

  static final TextStyle bodyGrey = GoogleFonts.roboto(
      color: AppColors.grey, fontSize: 14, fontWeight: FontWeight.w400);

  static final TextStyle textButtonBlack = GoogleFonts.roboto(
      color: AppColors.dark, fontSize: 18, fontWeight: FontWeight.w500);

  static final TextStyle subtitleTile = GoogleFonts.roboto(
      color: AppColors.dark, fontSize: 15, fontWeight: FontWeight.w400);

  static final TextStyle titleCard = GoogleFonts.roboto(
      color: AppColors.dark, fontSize: 16, fontWeight: FontWeight.w500);

  static final TextStyle presentText = GoogleFonts.roboto(
      color: AppColors.light, fontSize: 14, fontWeight: FontWeight.w400);

  static final TextStyle appBartitle = GoogleFonts.roboto(
      color: AppColors.light, fontSize: 22, fontWeight: FontWeight.w400);

  static final TextStyle textButtonPrimary = GoogleFonts.roboto(
      color: AppColors.primaryColor, fontSize: 16, fontWeight: FontWeight.w500);
}
