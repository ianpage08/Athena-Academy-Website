import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/hero_section/hero_buttons.dart';
import 'package:site_athena_academy/theme/text_style.dart';

class HeroText extends StatelessWidget {
  const HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 22,
                    spreadRadius: -4,
                    color: Color.fromARGB(22, 255, 255, 255),
                  ),
                ],
              ),
              child: Image.asset('assets/imagens/logo_white.png', width: 140),
            ),
            const SizedBox(height: 16),
            Text('ATHENA ACADEMY', style: AthenaTextStyle.display),
          ],
        ),

        const SizedBox(height: 32),

        Text(
          'A plataforma educacional do futuro',
          textAlign: TextAlign.center,
          style: AthenaTextStyle.subtitle,
        ),

        const SizedBox(height: 6),

        Text(
          'Uma plataforma moderna, intuitiva e feita para aproximar escolas,\n'
          'professores, alunos e pais.',
          textAlign: TextAlign.center,
          style: AthenaTextStyle.small,
        ),

        const SizedBox(height: 24),

        const HeroButtons(),
      ],
    );
  }
}
