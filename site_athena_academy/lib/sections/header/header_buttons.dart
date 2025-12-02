import 'package:flutter/material.dart';

class HeaderButtons extends StatefulWidget {
  const HeaderButtons({super.key});

  @override
  State<HeaderButtons> createState() => _HeaderButtonsState();
}

class _HeaderButtonsState extends State<HeaderButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          TextButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 20, 92, 248),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            onPressed: () {},
            label: const Text('Baixar App'),
            icon: const Icon(Icons.download),
          ),
          const SizedBox(width: 8),

          TextButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 19, 70),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            onPressed: () {},
            label: const Text('Repositorio'),
            icon: const Icon(Icons.dock),
          ),
        ],
      ),
    );
  }
}
