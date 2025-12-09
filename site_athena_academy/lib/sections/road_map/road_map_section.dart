import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/road_map/road_map_card.dart';
import 'package:site_athena_academy/widgets/animated_scroll.dart';

class RoadmapSection extends StatelessWidget {
  const RoadmapSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOnScroll(
            child: Text(
              "Roadmap do Athena Academy",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 16),

          AnimatedOnScroll(
            child: Text(
              "Visão clara do futuro da plataforma e das próximas entregas planejadas.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white.withOpacity(0.66),
              ),
            ),
          ),

          const SizedBox(height: 60),

          Wrap(
            spacing: 32,
            runSpacing: 32,
            alignment: WrapAlignment.center,
            children: const [
              RoadmapCard(
                quarter: "Q1 • 2026",
                items: [
                  "Login com Google e Apple",
                  "Autenticação em 2 Fatores",
                  "Portal Web por Perfis (Aluno/Professor)",
                ],
              ),
              RoadmapCard(
                quarter: "Q2 • 2026",
                items: [
                  "Relatórios Avançados",
                  "Sistema Financeiro (versão inicial)",
                  "App Mobile em Flutter (MVP)",
                ],
              ),
              RoadmapCard(
                quarter: "Q3 • 2026",
                items: [
                  "Agenda Inteligente + Lembretes",
                  "Integração com Plataformas",
                  "Dashboard Administrativo Completo",
                ],
              ),
              RoadmapCard(
                quarter: "Q4 • 2026",
                items: [
                  "Chat Interno em Tempo Real",
                  "Avaliações Online com Correção Automática",
                  "Aplicativo Mobile Completo",
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
