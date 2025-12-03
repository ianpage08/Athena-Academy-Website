import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class AthenaTextStyle {
  static TextStyle headerTitle = TextStyle(
    fontSize: 20,
    letterSpacing: 1.5,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w600,
    color: AthenaColors.textPrimary,
  );

  static TextStyle heroTitle = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    color: AthenaColors.textPrimary,
  );

  static TextStyle heroSubtitle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AthenaColors.textPrimary,
  );

  static TextStyle heroDescription = TextStyle(
    fontSize: 16,
    color: AthenaColors.textSecondary,
  );
}
