import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class HeroBackground extends StatelessWidget {
  const HeroBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Stack(
        children: [
          // Blob lilás (esquerda)
          Positioned(
            top: -120,
            left: -80,
            child: _Blob(
              size: 420,
              color: AthenaColors.primaryUltraLight.withOpacity(0.35),
            ),
          ),

          // Blob azul (direita)
          Positioned(
            bottom: -150,
            right: -120,
            child: _Blob(
              size: 460,
              color: AthenaColors.accentUltraLight.withOpacity(0.32),
            ),
          ),

          // Glow difuso orgânico (esquerda)
          Positioned(
            top: 160,
            left: -40,
            child: _DiffuseGlow(
              size: 520,
              color: AthenaColors.accentSoft.withOpacity(0.12),
            ),
          ),

          // Glow difuso secundário (harmonização)
          Positioned(
            top: 280,
            left: 200,
            child: _DiffuseGlow(
              size: 360,
              color: AthenaColors.primarySoft.withOpacity(0.08),
            ),
          ),
        ],
      ),
    );
  }
}

// Blob grande com blur suave
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
          // efeito de “volume”
          BoxShadow(
            color: color,
            blurRadius: 180,
            spreadRadius: 60,
          ),
        ],
      ),
    );
  }
}

// Glow orgânico difuso
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
          colors: [
            color,
            Colors.transparent,
          ],
          radius: 0.85,
        ),
      ),
    );
  }
}
