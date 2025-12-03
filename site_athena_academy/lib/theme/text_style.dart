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

  static TextStyle displayTitle = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    color: AthenaColors.textPrimary,
  );

  static TextStyle subtitle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AthenaColors.textPrimary,
  );

  static TextStyle smallText = TextStyle(
    fontSize: 16,
    color: AthenaColors.textSecondary,
  );
  static TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AthenaColors.textPrimary,
  );
}
