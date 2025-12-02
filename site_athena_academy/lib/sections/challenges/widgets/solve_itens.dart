import 'package:flutter/material.dart';

class SolveItem extends StatefulWidget {
  final String title;
  const SolveItem({super.key, required this.title});

  @override
  State<SolveItem> createState() => _SolveItemState();
}

class _SolveItemState extends State<SolveItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white, // Card clean
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: const Color(0xFFE5E7EB), // cinza muito suave
            width: 1,
          ),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Ícone circular moderno
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 229, 255, 231),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(6),
              child: const Icon(
                Icons.check,
                color: Color.fromARGB(255, 75, 75, 75),
                size: 18,
              ),
            ),

            const SizedBox(width: 16),

            // Texto
            Expanded(
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1C1C1E),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
