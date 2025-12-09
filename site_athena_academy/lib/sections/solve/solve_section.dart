import 'package:flutter/material.dart';

import 'package:site_athena_academy/sections/solve/solve_text.dart';
import 'package:site_athena_academy/theme/padding.dart';
import 'package:site_athena_academy/widgets/glass_container.dart';

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
              : GlassBox(
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: _buildImage()),
                      Expanded(flex: 1, child: SolveText()),
                      const SizedBox(width: 90),
                    ],
                  ),
                );
        },
      ),
    );
  }

  Widget _buildImage() {
    return Center(
      child: Image.asset('assets/imagens/icon_solve_3d.png', width: 500),
    );
  }
}
