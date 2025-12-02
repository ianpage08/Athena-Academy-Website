import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/ssj/widgets/card_item.dart';

class Section extends StatefulWidget {
  const Section({super.key});

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('O Futuro do Athena Academy', style: TextStyle(fontSize: 32)),
        SizedBox(height: 16),
        Text(
          'Novos recursos, mais automação e uma plataforma cada vez mais inteligente.',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Cardw(
                    icon: Icons.security,
                    title:
                        'Segurança avançada com autenticação de dois fatores',
                  ),
                  Cardw(icon: Icons.search, title: 'Login com Google e Apple'),
                  Cardw(
                    icon: Icons.contact_support,
                    title: 'Portal web completo para todos os perfins',
                  ),
                  Cardw(
                    icon: Icons.abc_outlined,
                    title: 'Chat interno entre Professores, alunos e pais ',
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Cardw(
                    icon: Icons.graphic_eq,
                    title: 'Relatórios avançados e analises  de desempenho',
                  ),
                  Cardw(
                    icon: Icons.money,
                    title: 'Sistema Finaceiro integrado e automatizado',
                  ),
                  Cardw(
                    icon: Icons.computer,
                    title: 'avaliações online com correção automática',
                  ),
                  Cardw(
                    icon: Icons.mobile_friendly,
                    title: 'Aplicativo mobile para todas as plataformas',
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Cardw(
                    icon: Icons.calendar_month,
                    title: 'Agenda inteligente com lebretes automaticos',
                  ),
                  Cardw(
                    icon: Icons.integration_instructions,
                    title: 'Integração com outras plataformas educacionais',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
