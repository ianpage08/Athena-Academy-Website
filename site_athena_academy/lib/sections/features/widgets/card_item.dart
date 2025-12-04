import 'package:flutter/material.dart';

class FeatureCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color glowColor;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.glowColor,
  });

  @override
  State<FeatureCard> createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 260,
        height: 320,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Colors.white.withOpacity(0.08)),

          // Glass + blur + leve glow
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.06),
              Colors.white.withOpacity(0.02),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

          boxShadow: [
            BoxShadow(
              color: widget.glowColor.withOpacity(hover ? 0.25 : 0.12),
              blurRadius: hover ? 40 : 22,
              spreadRadius: hover ? 2 : 0,
            ),
          ],
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Ícone neon
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: widget.glowColor.withOpacity(0.15),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: widget.glowColor.withOpacity(0.35),
                    blurRadius: 25,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Icon(widget.icon, size: 36, color: widget.glowColor),
            ),

            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),

            Text(
              widget.subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white70,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 8),

            // Botão futurista
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    widget.glowColor.withOpacity(0.9),
                    widget.glowColor.withOpacity(0.6),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: widget.glowColor.withOpacity(0.5),
                    blurRadius: hover ? 20 : 10,
                  ),
                ],
              ),

              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Saiba mais",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 6),
                  Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
