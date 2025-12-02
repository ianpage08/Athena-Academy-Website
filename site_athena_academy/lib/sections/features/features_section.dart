import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/features/fff.dart';
import 'package:site_athena_academy/sections/features/widgets/card_item.dart';

class FeaturesSection extends StatefulWidget {
  const FeaturesSection({super.key});

  @override
  State<FeaturesSection> createState() => _FeaturesSectionState();
}

class _FeaturesSectionState extends State<FeaturesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Pricipais Funcionalidades', style: TextStyle(fontSize: 32)),
        Text(
          'Um conjunto de ferramentas focadas em simplificar e otimizar a experiencia escolar',
          style: TextStyle(fontSize: 18),
        ),

        SizedBox(height: 20),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: const [
            CardItem(
              background: Color.fromARGB(255, 8, 43, 71),
              icon: Icons.admin_panel_settings,
              title: 'Gestão Escolar',
              subtitle: 'Gestão completa da escola com eficiência',
            ),
            CardItem(
              background: Color.fromARGB(255, 37, 76, 252),
              icon: Icons.school,
              title: 'Profesor',
              subtitle: 'Ferramentas rápidas para ensinar e gerenciar.',
            ),
            CardItem(
              background: Color.fromARGB(115, 0, 41, 41),
              icon: Icons.person,
              title: 'Aluno',
              subtitle: 'Conteúdos, notas e atividades.',
            ),
            CardItem(
              background: Color.fromARGB(255, 194, 146, 2),
              icon: Icons.family_restroom,
              title: 'Responsável',
              subtitle: 'Acompanhamento claro e transparente do aluno.',
            ),
          ],
        ),
        const SizedBox(height: 40),
        FeatureShowcase(),
      ],
    );
  }
}
