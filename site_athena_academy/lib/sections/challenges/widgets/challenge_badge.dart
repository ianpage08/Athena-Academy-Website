import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class ChallengeBadge extends StatefulWidget {
  final int number;
  final String text;
  final String description;

  const ChallengeBadge({
    super.key,
    required this.number,
    required this.text,
    required this.description,
  });

  @override
  State<ChallengeBadge> createState() => _ChallengeBadgeState();
}

class _ChallengeBadgeState extends State<ChallengeBadge> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 260),
        curve: Curves.easeOutCubic,
        transform: Matrix4.identity()..scale(_isHovered ? 1.04 : 1.0),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),

          // Fundo glass dark premium
          color: Colors.white.withOpacity(0.03),

          // Borda premium
          border: Border.all(
            color: Colors.white.withOpacity(_isHovered ? 0.18 : 0.08),
            width: 1.2,
          ),

          // Glow geral
          boxShadow: [
            BoxShadow(
              color: AthenaColors.accent.withOpacity(_isHovered ? 0.30 : 0.12),
              blurRadius: _isHovered ? 40 : 20,
              spreadRadius: _isHovered ? 3 : 0,
              offset: const Offset(0, 12),
            ),
          ],
        ),

        child: Container(
          width: 260,
          height: 250,
          padding: const EdgeInsets.all(18),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Número com glow + scale
              AnimatedScale(
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeOutBack,
                scale: _isHovered ? 1.14 : 1.0,

                child: Container(
                  width: 52,
                  height: 52, // 🔥 tamanho fixo do círculo
                  alignment: Alignment.center, // centraliza o texto certinho

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF5A7BFF), // azul neon
                        Color(0xFF8C4CFF), // roxo neon
                      ],
                    ),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.1),
                      width: 1.2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF6A85FF).withOpacity(0.45),
                        blurRadius: 26,
                        spreadRadius: -2,
                      ),
                    ],
                  ),

                  child: Text(
                    widget.number.toString(),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),

              Text(
                widget.description,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.70),
                  height: 1.35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
