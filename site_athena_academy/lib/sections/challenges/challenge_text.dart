import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';
import 'package:site_athena_academy/sections/challenges/widgets/challenge_badge.dart';

class ChallengeText extends StatelessWidget {
  const ChallengeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Desafios dos Portais Atuais",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w800,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),

        // linha estilizada
        Container(
          width: 160,
          height: 2,
          decoration: BoxDecoration(color: AthenaColors.primaryUltraLight),
        ),

        const SizedBox(height: 20),

        Text(
          "Principais problemas enfrentados hoje por escolas, "
          "professores, alunos e responsáveis.",
          style: TextStyle(fontSize: 16, color: Colors.black54, height: 1.4),
        ),

        const SizedBox(height: 40),

        // Lista de desafios
        Wrap(
          spacing: 60,
          runSpacing: 50,
          children: const [
            ChallengeBadge(number: 1, text: "Sistemas lentos e instáveis"),
            ChallengeBadge(
              number: 2,
              text: "Interfaces confusas e ultrapassadas",
            ),

            ChallengeBadge(number: 3, text: "Falta de informações claras"),
            ChallengeBadge(number: 4, text: "Dificuldade de registro de dados"),

            ChallengeBadge(number: 5, text: "Design não adaptado ao mobile"),
            ChallengeBadge(number: 6, text: "Comunicação descentralizada"),

            ChallengeBadge(number: 7, text: "Falta de notificações"),
          ],
        ),
      ],
    );
  }
}
