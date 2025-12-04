import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/ssj/widgets/card_item.dart';

class Section extends StatelessWidget {
  const Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),

        // TÍTULO
        Text(
          'O Futuro do Athena Academy',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w800,
            color: Colors.black.withOpacity(0.85),
          ),
        ),

        const SizedBox(height: 10),

        // SUBTÍTULO
        Text(
          'Novos recursos, mais automação e uma plataforma cada vez mais inteligente.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 17, color: Colors.black.withOpacity(0.55)),
        ),

        const SizedBox(height: 40),

        // GRID FUTURISTA
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              Cardw(
                icon: Icons.security,
                title: 'Segurança avançada com autenticação de dois fatores',
              ),
              Cardw(icon: Icons.search, title: 'Login com Google e Apple'),
              Cardw(
                icon: Icons.devices,
                title: 'Portal web completo para todos os perfis',
              ),
              Cardw(
                icon: Icons.chat_bubble_outline,
                title: 'Chat interno entre professores, alunos e pais',
              ),

              Cardw(
                icon: Icons.analytics_outlined,
                title: 'Relatórios avançados e análises de desempenho',
              ),
              Cardw(
                icon: Icons.account_balance_wallet,
                title: 'Sistema financeiro integrado e automatizado',
              ),
              Cardw(
                icon: Icons.computer,
                title: 'Avaliações online com correção automática',
              ),
              Cardw(
                icon: Icons.phone_android,
                title: 'Aplicativo mobile para todas as plataformas',
              ),

              Cardw(
                icon: Icons.calendar_month,
                title: 'Agenda inteligente com lembretes automáticos',
              ),
              Cardw(
                icon: Icons.hub,
                title: 'Integração com outras plataformas educacionais',
              ),
            ],
          ),
        ),

        const SizedBox(height: 50),
      ],
    );
  }
}
