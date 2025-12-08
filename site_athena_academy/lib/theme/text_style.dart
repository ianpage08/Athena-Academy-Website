import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class AthenaTextStyle {
  AthenaTextStyle._();

  // DISPLAY — Hero principal

  static const TextStyle display = TextStyle(
    fontSize: 52,
    fontWeight: FontWeight.w100,
    letterSpacing: -1.2,
    height: 1.1,
    color: Colors.white,
  );

  // Grande, forte,

  static const TextStyle headline = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    height: 1.25,
    letterSpacing: -0.2,
    color: Color.fromARGB(255, 255, 255, 255),
  );

  // SUBTITLE — Subtítulos explicativos e destaques
  // Médio, legível,

  static const TextStyle subtitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.45,
    color: Color.fromARGB(255, 214, 214, 214),
  );

  // BODY — Texto padrão
  // Limpo e legível

  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.55,
    color: Color.fromARGB(255, 252, 252, 252),
  );

  // SMALL — Informações secundárias / labels
  // Pequeno

  static const TextStyle small = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: Color.fromARGB(255, 212, 212, 212),
  );

  // -----------------------------------------
  // BUTTON — Texto de botões
  // Firme, direto, chamativo
  // -----------------------------------------
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: 0.4,
    color: AthenaColors.textPrimary,
  );

  // ------------------------------------------------------
  // HEADER TITLE — Navegação/topbar
  // Equilibrado e discreto para UI de navegação
  // ------------------------------------------------------
  static const TextStyle headerTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.3,
    color: Color.fromARGB(255, 192, 192, 192),
  );
}
