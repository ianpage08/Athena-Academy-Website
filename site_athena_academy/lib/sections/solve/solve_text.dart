import 'package:flutter/material.dart';

import 'package:site_athena_academy/sections/challenges/widgets/challenge_badge.dart';

class SolveText extends StatelessWidget {
  const SolveText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Soluções Oferecidas pelo Athena Academy",
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
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 62, 26, 224),
            ),
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
            spacing: 70,
            runSpacing: 50,
            children: const [
              ChallengeBadge(
                number: 1,
                text: "Desempenho otimizado ",
                description:
                    'O sistema responde rápido e sem travamentos,\nentregando uma experiência fluida para todos.',
              ),
              ChallengeBadge(
                number: 2,
                text: "Centraliza toda a comunicação escolar",
                description:
                    'Mensagens, avisos e informações ficam reunidos\nem um único lugar, eliminando canais dispersos.',
              ),

              ChallengeBadge(
                number: 3,
                text: "Simplifica o trabalho dos professores",
                description:
                    'A plataforma automatiza processos repetitivos\ne reduz tarefas manuais no dia a dia.',
              ),
              ChallengeBadge(
                number: 4,
                text: "Organiza a rotina dos alunos",
                description:
                    'Horários, tarefas e informações importantes\nficam acessíveis em um painel intuitivo.',
              ),

              ChallengeBadge(
                number: 5,
                text: "Melhora a transparência para os pais",
                description:
                    'Responsáveis acompanham presença, notas\ne avisos de forma clara e em tempo real.',
              ),
              ChallengeBadge(
                number: 6,
                text: "Facilita a gestão escolar",
                description:
                    'A administração acessa dados e relatórios\nde maneira rápida e organizada.',
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
