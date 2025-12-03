import 'package:flutter/material.dart';

class AthenaColors {
  //  Primary Colors
  static const Color primary = Color(0xFF5B4BBA); // roxo principal
  static const Color primarySoft = Color(0xFF8C79FF); // variante clara
  static const Color primaryUltraLight = Color(0xFFEDE9FF);

  //  Accents
  static const Color accent = Color(0xFF3A7BFF); // azul elétrico (CTAs)
  static const Color accentSoft = Color(0xFF9DC3FF);
  static const Color accentUltraLight = Color(0xFFE8F1FF);

  //  Neutros / Backgrounds
  static const Color background = Color(0xFFF7F9FC);
  // branco gelo (page background)
  static const Color backgroundSoft = Color(0xFFEFF3FA); // seção leve
  static const Color card = Color(0xFFFFFFFF); // white
  static const Color cardSoft = Color(0xFFF3F6FF);

  // Text
  static const Color textPrimary = Color(0xFF1A1D26);
  static const Color textSecondary = Color(0xFF4A4F5C);
  static const Color textTertiary = Color(0xFF8B92A6);

  //  Blobs / luz
  static const Color blobPurple = Color(0xFFD9D0FF);
  static const Color blobBlue = Color(0xFFCFE4FF);

  //  Semantic colors
  static const Color success = Color(0xFF2E7D32);
  static const Color successBg = Color(0xFFE9F7EE);
  static const Color danger = Color(0xFFD32F2F);
  static const Color dangerBg = Color(0xFFFFEBEB);
  static const Color warning = Color(0xFFB15C00);
  static const Color info = Color(0xFF1565C0);

  //  Disabled / focus / outline
  static const Color disabled = Color(0xFFD7DCE6);
  static const Color focus = Color(0xFFB6C4FF);
  static const Color outline = Color(0xFFE6EAF2);

  //  Gradients oficiais
  static const LinearGradient bodyGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFE6EEFF), Color(0xFFF0F4FF), Color(0xFFEDEAFF)],
  );

  static const LinearGradient accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accent, primarySoft],
  );

  static Color accentWithOpacity(double o) => accent.withOpacity(o);
  static Color primaryWithOpacity(double o) => primary.withOpacity(o);

  //  Dark-mode
  static const Color darkBackground = Color(0xFF0A0F1F);
  static const Color darkSurface = Color(0xFF121726);
  static const Color darkTextPrimary = Color(0xFFE6E9F2);

  // Prevent instantiation
  AthenaColors._();
}
