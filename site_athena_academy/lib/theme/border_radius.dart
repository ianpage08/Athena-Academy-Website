import 'package:flutter/material.dart';

class AthenaRadius {
  AthenaRadius._(); // evita instanciar a classe

  // Pequenos (UI menor, botões pequenos, inputs compactos)
  static const BorderRadius r8 = BorderRadius.all(Radius.circular(8));
  static const BorderRadius r10 = BorderRadius.all(Radius.circular(10));

  // Médios (cards padrão, inputs maiores)
  static const BorderRadius r12 = BorderRadius.all(Radius.circular(12));
  static const BorderRadius r14 = BorderRadius.all(Radius.circular(14));
  static const BorderRadius r16 = BorderRadius.all(Radius.circular(16));

  // Grandes (cards premium, seções principais)
  static const BorderRadius r20 = BorderRadius.all(Radius.circular(20));
  static const BorderRadius r24 = BorderRadius.all(Radius.circular(24)); // novo

  // Extra grandes (hero, seções especiais, glass futurista)
  static const BorderRadius r28 = BorderRadius.all(Radius.circular(28));
  static const BorderRadius r32 = BorderRadius.all(Radius.circular(32)); // novo
}
