import 'package:flutter/material.dart';

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
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onPressed: () {},
          label: const Text('Baixar App'),
          icon: const Icon(Icons.download),
        ),
        const SizedBox(width: 16),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(150, 50),
            backgroundColor: const Color.fromARGB(255, 11, 15, 44),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onPressed: () {
            // Ação do botão 2
          },
          label: const Text('Repositorio'),
          icon: const Icon(Icons.dock),
        ),
      ],
    );
  }
}
