import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';
import 'widgets/challenge_item.dart';

class ChallengeSection extends StatelessWidget {
  const ChallengeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
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
                  color: const Color.fromARGB(221, 255, 255, 255),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Como os portais atuais falham  e como o Athena Academy resolve.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(137, 255, 255, 255),
                ),
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

              ChallengeItem(
                title: 'Sistemas lentos e instáveis',
                icon: Icons.close,
                iconBg: Colors.red,
                iconColor: const Color.fromARGB(255, 255, 195, 195),
              ),
              ChallengeItem(
                title: 'Interfaces confusas e ultrapassadas',
                icon: Icons.close,
                iconBg: Colors.red,
                iconColor: const Color.fromARGB(255, 255, 195, 195),
              ),
              ChallengeItem(
                title: 'Falta de informações claras e acessíveis',
                icon: Icons.close,
                iconBg: Colors.red,
                iconColor: const Color.fromARGB(255, 255, 195, 195),
              ),
              ChallengeItem(
                title: 'Dificuldade para professores registrarem dados',
                icon: Icons.close,
                iconBg: Colors.red,
                iconColor: const Color.fromARGB(255, 255, 195, 195),
              ),
              ChallengeItem(
                title: 'Design não adaptado ao mobile',
                icon: Icons.close,
                iconBg: Colors.red,
                iconColor: const Color.fromARGB(255, 255, 195, 195),
              ),
              ChallengeItem(
                title: 'Comunicação descentralizada',
                icon: Icons.close,
                iconBg: Colors.red,
                iconColor: const Color.fromARGB(255, 255, 195, 195),
              ),
              ChallengeItem(
                title: 'Falta de notificações',
                icon: Icons.close,
                iconBg: Colors.red,
                iconColor: const Color.fromARGB(255, 255, 195, 195),
              ),
            ],
          ),
        ),
      ),
    );
  }

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

              ChallengeItem(
                title: 'Desempenho otimizado para garantir rapidez',
                icon: Icons.check,
                iconBg: Colors.greenAccent,
                iconColor: const Color.fromARGB(255, 76, 99, 69),
              ),
              ChallengeItem(
                title: 'Centraliza toda a comunicação escolar',
                icon: Icons.check,
                iconBg: Colors.greenAccent,
                iconColor: const Color.fromARGB(255, 76, 99, 69),
              ),
              ChallengeItem(
                title: 'Simplifica o trabalho dos professores',
                icon: Icons.check,
                iconBg: Colors.greenAccent,
                iconColor: const Color.fromARGB(255, 76, 99, 69),
              ),
              ChallengeItem(
                title: 'Organiza a rotina dos alunos',
                icon: Icons.check,
                iconBg: Colors.greenAccent,
                iconColor: const Color.fromARGB(255, 76, 99, 69),
              ),
              ChallengeItem(
                title: 'Melhora a transparência para os pais',
                icon: Icons.check,
                iconBg: Colors.greenAccent,
                iconColor: const Color.fromARGB(255, 76, 99, 69),
              ),
              ChallengeItem(
                title: 'Facilita a gestão escolar',
                icon: Icons.check,
                iconBg: Colors.greenAccent,
                iconColor: const Color.fromARGB(255, 76, 99, 69),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
