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
        /// Logo + nome
        Column(
          children: [
            Image.asset('assets/imagens/logo_icon.png', width: 180),
            const SizedBox(height: 12),
            Text('ATHENA ACADEMY', style: AthenaTextStyle.display),
          ],
        ),

        const SizedBox(height: 32),

        // Subtítulo
        Text(
          'A plataforma educacional do futuro',
          textAlign: TextAlign.center,
          style: AthenaTextStyle.subtitle,
        ),

        const SizedBox(height: 16),

        // Descrição
        Text(
          'Uma plataforma moderna, intuitiva e feita para aproximar escolas,\n'
          'professores, alunos e pais.',
          textAlign: TextAlign.center,
          style: AthenaTextStyle.small,
        ),

        const SizedBox(height: 32),

        
        HeroButtons(),
      ],
    );
  }
}
