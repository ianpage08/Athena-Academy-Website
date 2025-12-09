import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/future_section/widgets/card_item.dart';
import 'package:site_athena_academy/widgets/animated_scroll.dart';

class FutureSection extends StatelessWidget {
  const FutureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedOnScroll(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),

          Text(
            'O Futuro do Athena Academy',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w800,
              color: Colors.white.withOpacity(0.90),
            ),
          ),

          const SizedBox(height: 12),

          Text(
            'Novos recursos, mais automação e uma plataforma cada vez mais inteligente.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white.withOpacity(0.60),
            ),
          ),

          const SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Wrap(
              spacing: 28,
              runSpacing: 28,
              alignment: WrapAlignment.center,
              children: const [
                AnimatedOnScroll(
                  delay: Duration(milliseconds: 0),
                  child: FutureCard(
                    icon: Icons.security,
                    title:
                        'Segurança avançada com autenticação de dois fatores',
                  ),
                ),
                AnimatedOnScroll(
                  delay: Duration(milliseconds: 80),
                  child: FutureCard(
                    icon: Icons.search,
                    title: 'Login com Google e Apple',
                  ),
                ),
                AnimatedOnScroll(
                  delay: Duration(milliseconds: 160),
                  child: FutureCard(
                    icon: Icons.devices,
                    title: 'Portal web completo para todos os perfis',
                  ),
                ),
                AnimatedOnScroll(
                  delay: Duration(milliseconds: 240),
                  child: FutureCard(
                    icon: Icons.chat_bubble_outline,
                    title: 'Chat interno entre professores, alunos e pais',
                  ),
                ),

                AnimatedOnScroll(
                  delay: Duration(milliseconds: 320),
                  child: FutureCard(
                    icon: Icons.analytics_outlined,
                    title: 'Relatórios avançados e análises de desempenho',
                  ),
                ),
                AnimatedOnScroll(
                  delay: Duration(milliseconds: 400),
                  child: FutureCard(
                    icon: Icons.account_balance_wallet,
                    title: 'Sistema financeiro integrado e automatizado',
                  ),
                ),
                AnimatedOnScroll(
                  delay: Duration(milliseconds: 480),
                  child: FutureCard(
                    icon: Icons.computer,
                    title: 'Avaliações online com correção automática',
                  ),
                ),
                AnimatedOnScroll(
                  delay: Duration(milliseconds: 560),
                  child: FutureCard(
                    icon: Icons.phone_android,
                    title: 'Aplicativo mobile para todas as plataformas',
                  ),
                ),

                AnimatedOnScroll(
                  delay: Duration(milliseconds: 640),
                  child: FutureCard(
                    icon: Icons.calendar_month,
                    title: 'Agenda inteligente com lembretes automáticos',
                  ),
                ),
                AnimatedOnScroll(
                  delay: Duration(milliseconds: 720),
                  child: FutureCard(
                    icon: Icons.hub,
                    title: 'Integração com outras plataformas educacionais',
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
