import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF000000), // preto
            Color(0xFF0A0420), // roxo quase preto
            Color(0xFF0A1A45), // azul bem escuro
            Color(0xFF101010), // preto cinza suave
          ],
          stops: [0.0, 0.35, 0.75, 1.0],
        ),
      ),

      child: child,
    );
  }
}
