import 'package:flutter/material.dart';

class AthenaShadow {
  AthenaShadow._(); // evita instanciar

  
  //  SHADOWS (LIGHT MODE)
  

  // Sombra bem suave — usada para separar levemente o card do fundo.
  static const List<BoxShadow> soft = [
    BoxShadow(
      color: Color.fromARGB(25, 0, 0, 0), // ~10% opacity
      blurRadius: 6,
      offset: Offset(0, 2),
    ),
  ];

  // Sombra padrão — cards, containers principais.
  static const List<BoxShadow> medium = [
    BoxShadow(
      color: Color.fromARGB(30, 0, 0, 0),
      blurRadius: 12,
      offset: Offset(0, 6),
    ),
  ];

  // Sombra forte — componentes de destaque ou elevação extra.
  static const List<BoxShadow> strong = [
    BoxShadow(
      color: Color.fromARGB(35, 0, 0, 0),
      blurRadius: 20,
      offset: Offset(0, 10),
    ),
  ];

  // Sombra Super Difusa — padrão em UI futurista (Apple / Linear).
  
  static const List<BoxShadow> diffuse = [
    BoxShadow(
      color: Color.fromARGB(40, 0, 0, 0),
      blurRadius: 32,
      spreadRadius: -4,
      offset: Offset(0, 12),
    ),
  ];
}
