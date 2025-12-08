import 'package:flutter/material.dart';

class FeatureShowcase extends StatelessWidget {
  const FeatureShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFeatureBlock(
          reverse: false,
          title: "Organização clara para os alunos",
          description:
              "Atividades, conteúdos, notas, comunicados e presença ficam organizados em uma interface moderna e intuitiva.\n\nA navegação rápida reduz estresse, melhora o foco nos estudos e torna o dia a dia mais leve.",
          imagePath: "assets/imagens/celular_34.png",
        ),
        _buildFeatureBlock(
          reverse: true,
          title: "Produtividade total para professores",
          description:
              "Registrar presença com 1 toque, enviar conteúdos, lançar notas e acompanhar entregas se torna fluido e eficiente.\n\nMenos tempo perdido em menus confusos — mais tempo focado em ensinar.",
          imagePath: "assets/imagens/celular_3.png",
        ),
        _buildFeatureBlock(
          reverse: false,
          title: "Gestão completa da escola",
          description:
              "Turmas, alunos, professores, calendário, comunicados, atividades e presença ficam centralizados em um painel inteligente.\n\nA gestão deixa de ser burocrática e passa a ser organizada, rápida e altamente produtiva.",
          imagePath: "assets/imagens/celular_2.png",
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
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xFF6A95FF), Color(0xFF9ED2FF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 14),
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
        padding: const EdgeInsets.all(40),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF6A95FF).withOpacity(0.1),
                blurRadius: 60,
                spreadRadius: 1,
                offset: const Offset(0, 18),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset(imagePath, height: 500, fit: BoxFit.contain),
          ),
        ),
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.05),
            Colors.white.withOpacity(0.02),
          ],
        ),
        border: Border.all(color: Colors.white.withOpacity(0.08), width: 1.2),
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
