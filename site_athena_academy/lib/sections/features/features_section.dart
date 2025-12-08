import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/features/widgets/card_item.dart';

import 'package:site_athena_academy/sections/features/mockops.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),

        const Text(
          'Principais Funcionalidades',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 12),

        const Text(
          'Ferramentas projetadas para elevar a experiência escolar ao próximo nível',
          style: TextStyle(fontSize: 18, color: Colors.white70),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 50),
        FeatureShowcase(),
        const SizedBox(height: 60),

        Wrap(
          spacing: 32,
          runSpacing: 32,
          alignment: WrapAlignment.center,
          children: const [
            FeatureCard(
              icon: Icons.admin_panel_settings,
              title: 'Gestão Escolar',
              subtitle: 'Gestão completa da escola com eficiência.',
              glowColor: Color(0xFF4D9FFF),
            ),
            FeatureCard(
              icon: Icons.school,
              title: 'Professor',
              subtitle: 'Ferramentas rápidas para ensinar e gerenciar.',
              glowColor: Color(0xFF697BFF),
            ),
            FeatureCard(
              icon: Icons.person,
              title: 'Aluno',
              subtitle: 'Conteúdos, notas e atividades.',
              glowColor: Color(0xFF2DE3B5),
            ),
            FeatureCard(
              icon: Icons.family_restroom,
              title: 'Responsável',
              subtitle: 'Acompanhamento claro e transparente.',
              glowColor: Color(0xFFFFD66B),
            ),
          ],
        ),
      ],
    );
  }
}
