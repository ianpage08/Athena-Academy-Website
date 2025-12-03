import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class AthenaTextStyle {
  AthenaTextStyle._(); // evita instanciar

  
  //  DISPLAY (Hero, seções de impacto)
  
  static const TextStyle display = TextStyle(
    fontSize: 56,
    fontWeight: FontWeight.w700,
    height: 1.1,
    color: AthenaColors.textPrimary,
  );

  
  //  HEADLINE (títulos de seções)
  
  static const TextStyle headline = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.2,
    color: AthenaColors.textPrimary,
  );

  
  //  SUBTITLE (subtítulos, descrições maiores)
  
  static const TextStyle subtitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: AthenaColors.textSecondary,
  );

  
  //  BODY (texto padrão)
  
  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AthenaColors.textPrimary,
  );

  
  //  SMALL (texto informativo, labels)
  
  static const TextStyle small = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: AthenaColors.textSecondary,
  );

 
  //  BUTTON TEXT
  
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.2,
    color: AthenaColors.textPrimary,
  );

  
  //  HEADER TITLE (aplicado no header/nav)
  
  static const TextStyle headerTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
    color: AthenaColors.textPrimary,
  );
}
