import 'package:flutter/material.dart';
import 'package:site_athena_academy/widgets/animated_scroll.dart';


class FeatureShowcase extends StatelessWidget {
  const FeatureShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedOnScroll(
          offsetX: -100.0,
          child: _buildFeatureBlock(
            reverse: false,
            title: "Organização clara para os alunos",
            description:
                "A rotina escolar dos alunos finalmente ganha estrutura.\n"
                "Atividades, notas, horários, conteúdos, presença e comunicados ficam\n"
                "organizados em um único lugar — com uma navegação fluida que reduz\n"
                "o estresse e aumenta o foco nos estudos.\n\n"
                "O aluno abre o app e imediatamente entende o que precisa fazer: quais tarefas são\n"
                "prioridade, o que está pendente e para onde deve ir — sem confusão, sem excesso de\n"
                "menus e sem perder tempo procurando informações.\n\n"
                "O Athena Academy transforma o cotidiano escolar em algo simples, rápido e extremamente agradável.",
            imagePath: "assets/imagens/celular_34.png",
          ),
        ),

        AnimatedOnScroll(
          offsetX: 100.0,
          child: _buildFeatureBlock(
            reverse: true,
            title: "Produtividade total para professores",
            description:
                "Registrar presença com 1 toque, enviar conteúdos, lançar notas e acompanhar entregas\n"
                "nunca foi tão rápido. A plataforma elimina telas confusas, reduz cliques desnecessários\n"
                "e automatiza processos repetitivos — deixando tudo fluido, direto e eficiente.\n\n"
                "Em vez de perder tempo navegando por sistemas antigos, o professor utiliza um fluxo moderno,\n"
                "otimizado e prático, desenhado para facilitar o ensino, não para atrapalhar.\n\n"
                "Com menos ruído e mais eficiência, o trabalho docente se torna mais leve, organizado e produtivo.",
            imagePath: "assets/imagens/celular_3.png",
          ),
        ),

        AnimatedOnScroll(
          offsetX: -100.0,
          child: _buildFeatureBlock(
            reverse: false,
            title: "Gestão completa da escola",
            description:
                "Turmas, alunos, professores, calendário, atividades, comunicados, presença e relatórios\n"
                "ficam centralizados em um painel inteligente e intuitivo.\n\n"
                "Coordenadores e direção têm acesso rápido aos dados essenciais para tomar decisões\n"
                "com segurança. Tudo é apresentado de maneira clara, organizada e com insights que realmente\n"
                "fazem diferença.\n\n"
                "A gestão deixa de ser burocrática e fragmentada — tornando-se clara, eficiente e altamente produtiva,\n"
                "dentro de uma interface moderna, agradável e acessível a toda a equipe.",
            imagePath: "assets/imagens/celular_2.png",
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureBlock({
    required bool reverse,
    required String title,
    required String description,
    required String imagePath,
  }) {
    final textBlock = Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xFFFFFFFF), Color(0xFF5EA7FF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              description,
              style: TextStyle(
                fontSize: 17,
                height: 1.55,
                color: Colors.white.withOpacity(0.78),
              ),
            ),
          ],
        ),
      ),
    );

    final imageBlock = Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF5A8CFF).withOpacity(0.18),
                blurRadius: 80,
                spreadRadius: 4,
                offset: const Offset(0, 28),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(26),
            child: Image.asset(imagePath, height: 520, fit: BoxFit.contain),
          ),
        ),
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 60),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.07),
            Colors.white.withOpacity(0.03),
          ],
        ),
        border: Border.all(color: Colors.white.withOpacity(0.10), width: 1.3),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.10),
            blurRadius: 30,
            offset: const Offset(0, 15),
          ),
        ],
      ),
      child: SizedBox(
        width: 1500,
        child: Row(
          children: reverse ? [imageBlock, textBlock] : [textBlock, imageBlock],
        ),
      ),
    );
  }
}
