import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';
import 'package:site_athena_academy/sections/challenges/widgets/challenge_badge.dart';

class ChallengeText extends StatelessWidget {
  const ChallengeText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Desafios dos Portais Atuais",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w800,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          const SizedBox(height: 8),

          // linha estilizada
          Container(
            width: 260,
            height: 3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.white.withOpacity(0.85), AthenaColors.accent],
              ),
            ),
          ),

          const SizedBox(height: 20),

          Text(
            "Principais problemas enfrentados hoje por escolas, "
            "professores, alunos e responsáveis.",
            style: TextStyle(
              fontSize: 16,
              color: const Color.fromARGB(213, 255, 255, 255),
              height: 1.4,
            ),
          ),

          const SizedBox(height: 40),

          // Lista de desafios
          Wrap(
            spacing: 60,
            runSpacing: 50,
            children: const [
              ChallengeBadge(
                number: 1,
                text: "Sistemas lentos e instáveis",
                description:
                    'Causam atrasos, travamentos\ne prejudicam a experiência dos usuários.',
              ),
              ChallengeBadge(
                number: 2,
                text: "Interfaces confusas e ultrapassadas",
                description:
                    'Dificultam a navegação e o\nacesso às informações essenciais.',
              ),

              ChallengeBadge(
                number: 3,
                text: "Falta de informações claras",
                description:
                    'Usuários não encontram dados importantes\ncom rapidez e precisão.',
              ),
              ChallengeBadge(
                number: 4,
                text: "Dificuldade de registro de dados",
                description:
                    'Professores perdem tempo com\nprocessos manuais e pouco intuitivos.',
              ),

              ChallengeBadge(
                number: 5,
                text: "Design não adaptado ao mobile",
                description:
                    'Prejudica o uso em celulares, onde\na maior parte acessa o portal.',
              ),
              ChallengeBadge(
                number: 6,
                text: "Comunicação descentralizada",
                description:
                    'Mensagens e avisos ficam espalhados\nem vários canais sem integração.',
              ),

              ChallengeBadge(
                number: 7,
                text: "Falta de notificações",
                description:
                    'Usuários perdem prazos e\ninformações importantes.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
