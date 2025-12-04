import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/challenges/widgets/challenge_solve_item.dart';

class ChallengeText extends StatelessWidget {
  const ChallengeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
