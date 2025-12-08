import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class HeroButtons extends StatelessWidget {
  const HeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(150, 50),
            backgroundColor: AthenaColors.accent,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            overlayColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.12),
          ),

          onPressed: () {},
          label: const Text('Baixar App Demo'),
          icon: const Icon(Icons.download),
        ),
        const SizedBox(width: 16),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(150, 50),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black87,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            overlayColor: Colors.black.withOpacity(0.08),
          ),
          onPressed: () {
            // Ação do botão 2
          },
          label: const Text('Explorar Repositorio'),
          icon: const Icon(Icons.dock),
        ),
      ],
    );
  }
}
