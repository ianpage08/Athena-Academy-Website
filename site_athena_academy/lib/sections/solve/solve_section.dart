import 'package:flutter/material.dart';
import 'package:site_athena_academy/theme/padding.dart';

class SolveSection extends StatefulWidget {
  const SolveSection({super.key});

  @override
  State<SolveSection> createState() => _SolveSectionState();
}

class _SolveSectionState extends State<SolveSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AthenaPadding.all32,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bool isMobile = constraints.maxWidth < 900;
          return isMobile
              ? Column(children: [])
              : Row(
                  children: [
                    Expanded(flex: 1, child: Container()),
                    Expanded(flex: 1, child: Container()),
                  ],
                );
        },
      ),
    );
  }

  Widget _buildImage() {
    return Center(
      child: Image.asset('assets/imagens/icone_challenge_3d.png', width: 420),
    );
  }
}
