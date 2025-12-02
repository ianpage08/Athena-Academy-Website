import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/header/header_buttons.dart';
import 'package:site_athena_academy/sections/header/hero_section/hero_buttons.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('assets/imagens/logoG.png', width: 400)],
          ),
          Text(
            'A NOVA ERA DOS PORTAIS ESCOLARES',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Text(
            'Uma plataforma moderna, intuitiva e feita para aproximar escolas, professores, alunos e pais.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
          const SizedBox(height: 20),
          HeroButtons(),
        ],
      ),
    );
  }
}
