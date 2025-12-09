import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class ChallengeBadge extends StatefulWidget {
  final int number;
  final String text;
  final String description;
  final Duration delay;

  const ChallengeBadge({
    super.key,
    required this.number,
    required this.text,
    required this.description,
    this.delay = Duration.zero,
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
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..scale(_isHovered ? 1.04 : 1.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AthenaColors.accent.withOpacity(_isHovered ? 0.25 : 0.10),
              blurRadius: _isHovered ? 40 : 20,
              spreadRadius: _isHovered ? 3 : 0,
            ),
          ],
        ),

        child: Container(
          width: 260,
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // número com animação pop
              AnimatedScale(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOutBack,
                scale: _isHovered ? 1.12 : 1.0,

                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: AthenaColors.accent.withOpacity(0.9),
                  child: Text(
                    widget.number.toString(),
                    style: const TextStyle(
                      color: Colors.white,
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
                  color: Colors.white.withOpacity(0.75),
                  height: 1.3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
