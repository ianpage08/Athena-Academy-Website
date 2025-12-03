import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class HeaderButtons extends StatefulWidget {
  const HeaderButtons({super.key});

  @override
  State<HeaderButtons> createState() => _HeaderButtonsState();
}

class _HeaderButtonsState extends State<HeaderButtons> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHover = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                boxShadow: _isHover
                    ? [
                        BoxShadow(
                          color: AthenaColors.accent.withOpacity(0.4),
                          blurRadius: 12,
                          spreadRadius: 1,
                        ),
                      ]
                    : [],
              ),
              curve: Curves.easeInOut,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: _isHover
                      ? const Color.fromARGB(255, 71, 128, 241)
                      : AthenaColors.accent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                onPressed: () {},
                label: const Text('Baixar App Demo'),
                icon: const Icon(Icons.download),
              ),
            ),
            const SizedBox(width: 16),

            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              label: const Text('Explorar Repositorio'),
              icon: const Icon(Icons.dock),
            ),
          ],
        ),
      ),
    );
  }
}
