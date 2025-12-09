import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';
import 'package:site_athena_academy/sections/challenges/widgets/challenge_badge.dart';
import 'package:site_athena_academy/widgets/animated_scroll.dart';

class ChallengeText extends StatefulWidget {
  const ChallengeText({super.key});

  @override
  State<ChallengeText> createState() => _ChallengeTextState();
}

class _ChallengeTextState extends State<ChallengeText>
    with SingleTickerProviderStateMixin {
  

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
              AnimatedOnScroll(
                delay: Duration(milliseconds: 0),
                child: ChallengeBadge(
                  number: 1,
                  text: "Sistemas lentos e instáveis",
                  description:
                      'Causam atrasos, travamentos\ne prejudicam a experiência dos usuários.',
                ),
              ),
              AnimatedOnScroll(
                delay: Duration(milliseconds: 80),
                child: ChallengeBadge(
                  number: 2,
                  text: "Interfaces confusas e ultrapassadas",
                  description:
                      'Dificultam a navegação e o\nacesso às informações essenciais.',
                ),
              ),

              AnimatedOnScroll(
                delay: Duration(milliseconds: 160),
                child: ChallengeBadge(
                  number: 3,
                  text: "Falta de informações claras",
                  description:
                      'Usuários não encontram dados importantes\ncom rapidez e precisão.',
                ),
              ),
              AnimatedOnScroll(
                delay: Duration(milliseconds: 240),
                child: ChallengeBadge(
                  number: 4,
                  text: "Dificuldade de registro de dados",
                  description:
                      'Professores perdem tempo com\nprocessos manuais e pouco intuitivos.',
                ),
              ),

              AnimatedOnScroll(
                delay: Duration(milliseconds: 320),
                child: ChallengeBadge(
                  number: 5,
                  text: "Design não adaptado ao mobile",
                  description:
                      'Prejudica o uso em celulares, onde\na maior parte acessa o portal.',
                ),
              ),
              AnimatedOnScroll(
                delay: Duration(milliseconds: 400),
                child: ChallengeBadge(
                  number: 6,
                  text: "Comunicação descentralizada",
                  description:
                      'Mensagens e avisos ficam espalhados\nem vários canais sem integração.',
                ),
              ),

              AnimatedOnScroll(
                delay: Duration(milliseconds: 480),
                child: ChallengeBadge(
                  number: 7,
                  text: "Falta de notificações",
                  description:
                      'Usuários perdem prazos e\ninformações importantes.',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
