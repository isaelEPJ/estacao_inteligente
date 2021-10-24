import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final titleHome = GoogleFonts.inter(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );
  static final titleBackGround = GoogleFonts.inter(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: AppColors.whitePrimary,
  );

  static final titleListTile = GoogleFonts.inter(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static final normalTextPrimary = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.primary,
  );
  static final normalTextSecoundary = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.grey,
  );
  static final normalTextBackground = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.whitePrimary,
  );
  static final normalTextBlack = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );
}
