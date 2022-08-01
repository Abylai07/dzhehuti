import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppStyles {
  static const s12w400 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static const s12w500 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.quotasCategoryColor);

  static const s14w400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
    decoration: TextDecoration.underline,
    decorationThickness: 1.5,
    color: Colors.white,
  );

  static const s14w500 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static const s16w500 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const s16w700 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 3,
    color: AppColors.authorizationAppBarTextColor,
  );

  static const s18w400 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static const s22w700 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColors.authorizationAppBarTextColor,
  );

  static const s32w700 = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      letterSpacing: 3,
      color: AppColors.dzhehutiBodyNameColor);
}
