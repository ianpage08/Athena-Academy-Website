import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class HeroBackground extends StatelessWidget {
  const HeroBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Stack(
        children: [
          /// ⭐ Blob roxo suave (esquerda)
          Positioned(
            top: -140,
            left: -100,
            child: _Blob(
              size: 420,
              color: AthenaColors.primarySoft.withOpacity(0.01),
            ),
          ),

          /// ⭐ Blob azul suave (direita inferior)
          Positioned(
            bottom: -160,
            right: -130,
            child: _Blob(
              size: 480,
              color: AthenaColors.accentSoft.withOpacity(0.02),
            ),
          ),

          /// ⭐ Glow azul-violeta (esquerda)
          Positioned(
            top: 160,
            left: -40,
            child: _DiffuseGlow(
              size: 520,
              color: AthenaColors.accent.withOpacity(0.10),
            ),
          ),

          /// ⭐ Glow secundário roxo (meio-esquerda)
          Positioned(
            top: 300,
            left: 180,
            child: _DiffuseGlow(
              size: 380,
              color: AthenaColors.primaryUltraLight.withOpacity(0.06),
            ),
          ),

          /// ⭐ Glow muito suave atrás do texto (contraste premium)
          Positioned(
            top: 120,
            right: -60,
            child: _DiffuseGlow(
              size: 420,
              color: Colors.white.withOpacity(0.03),
            ),
          ),
        ],
      ),
    );
  }
}

class _Blob extends StatelessWidget {
  final double size;
  final Color color;

  const _Blob({required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4),
            blurRadius: 150,
            spreadRadius: 50,
          ),
        ],
      ),
    );
  }
}

class _DiffuseGlow extends StatelessWidget {
  final double size;
  final Color color;

  const _DiffuseGlow({required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size),
        gradient: RadialGradient(
          colors: [color, Colors.transparent],
          radius: 0.85,
        ),
      ),
    );
  }
}
