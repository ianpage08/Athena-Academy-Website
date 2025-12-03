import 'package:flutter/material.dart';

class AthenaColors {
  // cores principais
  static const Color primary = Color(0xFF5B4BBA); // seu roxo futurista
  static const Color primarySoft = Color(0xFF8C79FF); // versão clara
  static const Color primaryUltraLight = Color(0xFFEDE9FF); // blob light

  // cores neutras
  static const Color background = Color(0xFFF7F9FC); // branco gelo
  static const Color backgroundSoft = Color(0xFFEFF3FA); // cinza azulado suave
  static const Color card = Color(0xFFFFFFFF); // branco puro
  static const Color cardSoft = Color(0xFFF3F6FF); // glass leve
  // cores de texto
  static const Color textPrimary = Color(0xFF1A1D26); // preto suave
  static const Color textSecondary = Color(0xFF4A4F5C); // cinza elegante
  static const Color textTertiary = Color(0xFF8B92A6); // cinza claro

  // cores de destaque
  static const Color accent = Color(0xFF3A7BFF);
  static const Color accentSoft = Color(0xFF9DC3FF);
  static const Color accentUltraLight = Color(0xFFE8F1FF);
  // Blobs / luz
  static const Color blobPurple = Color(0xFFD9D0FF);
  static const Color blobBlue = Color(0xFFCFE4FF);

  static const LinearGradient bodyGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFE6EEFF),
    Color(0xFFF0F4FF),
    Color(0xFFEDEAFF),
  ],
);

}
