import 'package:flutter/material.dart';
import 'widgets/challenge_itens.dart';
import 'widgets/solve_itens.dart';

class ChallengeSection extends StatelessWidget {
  const ChallengeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFE3EAF0), // fundo premium
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 900;

          return Column(
            children: [
              // Título geral da seção
              Text(
                "Desafios e Soluções",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Como os portais atuais falham  e como o Athena Academy resolve.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 50),

              // Layout responsivo
              isMobile
                  ? Column(
                      children: [
                        _buildChallengesCard(),
                        const SizedBox(height: 30),
                        _buildSolutionsCard(),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [_buildChallengesCard(), _buildSolutionsCard()],
                    ),
            ],
          );
        },
      ),
    );
  }

  // CARD 1 — DESAFIOS
  Widget _buildChallengesCard() {
    return Card(
      elevation: 3,
      shadowColor: Colors.black12,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: SizedBox(
          width: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Os Desafios Atuais dos Portais',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Uma visão clara dos principais problemas enfrentados por escolas, professores, alunos e responsáveis.',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              const SizedBox(height: 24),

              ChallengeItem(title: 'Sistemas lentos e instáveis'),
              ChallengeItem(title: 'Interfaces confusas e ultrapassadas'),
              ChallengeItem(title: 'Falta de informações claras e acessíveis'),
              ChallengeItem(
                title: 'Dificuldade para professores registrarem dados',
              ),
              ChallengeItem(title: 'Design não adaptado ao mobile'),
              ChallengeItem(title: 'Comunicação descentralizada'),
              ChallengeItem(title: 'Falta de notificações'),
            ],
          ),
        ),
      ),
    );
  }

  // CARD 2 — SOLUÇÕES
  Widget _buildSolutionsCard() {
    return Card(
      elevation: 3,
      shadowColor: Colors.black12,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: SizedBox(
          width: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Como o Athena Academy Resolve Esses Desafios',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Um portal desenvolvido com foco nas necessidades reais das escolas e seus usuários.',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              const SizedBox(height: 24),

              SolveItem(title: 'Desempenho otimizado para garantir rapidez'),
              SolveItem(title: 'Centraliza toda a comunicação escolar'),
              SolveItem(title: 'Simplifica o trabalho dos professores'),
              SolveItem(title: 'Organiza a rotina dos alunos'),
              SolveItem(title: 'Melhora a transparência para os pais'),
              SolveItem(title: 'Facilita a gestão escolar'),
            ],
          ),
        ),
      ),
    );
  }
}
