import 'package:flutter/material.dart';

class HeroMockup extends StatelessWidget {
  const HeroMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(80, 0, 0, 0),
            blurRadius: 90,
            offset: Offset(0, 50),
          ),
          BoxShadow(
            color: Color.fromARGB(40, 255, 255, 255),
            blurRadius: 140,
            offset: Offset(0, 20),
          ),
        ],
      ),
      child: Image.asset('assets/imagens/hero_1.png', width: 450),
    );
  }
}
