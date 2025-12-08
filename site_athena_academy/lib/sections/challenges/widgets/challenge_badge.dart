import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class ChallengeBadge extends StatelessWidget {
  final int number;
  final String text;
  final String description;

  const ChallengeBadge({
    super.key,
    required this.number,
    required this.text,
    this.description = '',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // BADGE NUMERADO
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: AthenaColors.accentGradient,
              boxShadow: [
                BoxShadow(
                  color: AthenaColors.accent.withOpacity(0.35),
                  blurRadius: 18,
                  spreadRadius: 2,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(width: 16),

          // TEXTO
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TÍTULO
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),

                const SizedBox(height: 6),

                // DESCRIÇÃO
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.45,
                    color: Colors.white.withOpacity(0.75),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
