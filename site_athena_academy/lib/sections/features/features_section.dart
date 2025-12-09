import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/features/widgets/card_item.dart';

import 'package:site_athena_academy/sections/features/mockops.dart';
import 'package:site_athena_academy/theme/text_style.dart';
import 'package:site_athena_academy/widgets/animated_scroll.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedOnScroll(
      child: Column(
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
          AnimatedOnScroll(
            child: Column(
              children: [
                Text(
                  'Para cada perfil, uma experiência\ncompleta quero um subtitulo para esse',
                  style: TextStyle(fontSize: 32, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  'Ferramentas pensadas para atender escolas,professores, alunos e responsáveis com máxima eficiência.',
                  style: AthenaTextStyle.subtitle,
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),

          Wrap(
            spacing: 32,
            runSpacing: 32,
            alignment: WrapAlignment.center,
            children: const [
              AnimatedOnScroll(
                delay: Duration(milliseconds: 0),
                offsetX: 100.0,
                child: FeatureCard(
                  icon: Icons.admin_panel_settings,
                  title: 'Gestão Escolar',
                  subtitle: 'Gestão completa da escola com eficiência.',
                  glowColor: Color(0xFF4D9FFF),
                ),
              ),
              AnimatedOnScroll(
                delay: Duration(milliseconds: 80),
                offsetX: 100.0,
                child: FeatureCard(
                  icon: Icons.school,
                  title: 'Professor',
                  subtitle: 'Ferramentas rápidas para ensinar e gerenciar.',
                  glowColor: Color(0xFF697BFF),
                ),
              ),
              AnimatedOnScroll(
                delay: Duration(milliseconds: 160),
                offsetX: 100.0,
                child: FeatureCard(
                  icon: Icons.person,
                  title: 'Aluno',
                  subtitle: 'Conteúdos, notas e atividades.',
                  glowColor: Color(0xFF2DE3B5),
                ),
              ),
              AnimatedOnScroll(
                delay: Duration(milliseconds: 240),
                offsetX: 100.0,
                child: FeatureCard(
                  icon: Icons.family_restroom,
                  title: 'Responsável',
                  subtitle: 'Acompanhamento claro e transparente.',
                  glowColor: Color(0xFFFFD66B),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
