import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class ChallengeBadge extends StatelessWidget {
  final int number;
  final String text;
  final String description;

  const ChallengeBadge({super.key, required this.number, required this.text, this.description = ''});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: AthenaColors.accentGradient,
              boxShadow: [
                BoxShadow(
                  color: AthenaColors.accent.withOpacity(0.4),
                  blurRadius: 8,
                  spreadRadius: 1,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
