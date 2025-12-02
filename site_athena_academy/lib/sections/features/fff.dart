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
              "Atividades, conteúdos, notas, comunicados e presença ficam organizados em uma interface moderna, rápida e intuitiva. A navegação simples reduz estresse, melhora o foco nos estudos e deixa o dia a dia mais leve.",
          imagePath: "assets/imagens/tela_admin.png",
        ),
        _buildFeatureBlock(
          reverse: true,
          title: "Produtividade total para professores",
          description:
              "Registrar presença com 1 toque, publicar conteúdos, enviar atividades, lançar notas e acompanhar entregas se torna um processo fluido e rápido. Menos tempo clicando em menus confusos e mais tempo fazendo o que realmente importa: ensinar.",
          imagePath: "assets/imagens/tela_admin.png",
        ),
        _buildFeatureBlock(
          reverse: false,
          title: "Gestão completa da escola",
          description:
              "O administrador controla tudo de forma centralizada e eficiente Turmas, alunos, professores, calendário, comunicados, exercícios e presença ficam integrados em um único painel inteligente. A gestão escolar deixa de ser burocrática e se torna clara, organizada e altamente produtiva.",
          imagePath: "assets/imagens/tela_admin.png",
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
    final textBlock = SizedBox(
      width: 600,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );

    final imageBlock = Expanded(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Image.asset(imagePath, height: 600),
      ),
    );

    return SizedBox(
      width: 1500,
      child: Row(
        children: reverse ? [imageBlock, textBlock] : [textBlock, imageBlock],
      ),
    );
  }
}
