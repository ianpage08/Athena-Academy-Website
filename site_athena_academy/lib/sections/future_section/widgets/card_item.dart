import 'package:flutter/material.dart';

class FutureCard extends StatefulWidget {
  final IconData icon;
  final String title;

  const FutureCard({super.key, required this.icon, required this.title});

  @override
  State<FutureCard> createState() => _FutureCardState();
}

class _FutureCardState extends State<FutureCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 360,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.10),
              Colors.white.withOpacity(0.04),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

          border: Border.all(
            color: Colors.white.withOpacity(hover ? 0.40 : 0.20),
            width: hover ? 1.6 : 1.0,
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent.withOpacity(hover ? 0.35 : 0.15),
              blurRadius: hover ? 40 : 20,
              spreadRadius: hover ? 3 : 0,
              offset: const Offset(0, 10),
            ),
          ],
        ),

        child: Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: hover ? 62 : 56,
              height: hover ? 62 : 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(
                  colors: [Color(0xFF6A8DFF), Color(0xFF3F6CFF)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF3A7BFF).withOpacity(0.55),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Icon(widget.icon, color: Colors.white, size: 30),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 17.5,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1.35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
