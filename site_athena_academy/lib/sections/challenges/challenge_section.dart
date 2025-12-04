import 'package:flutter/material.dart';

import 'package:site_athena_academy/sections/challenges/challenge_text.dart';

class ChallengeSection extends StatelessWidget {
  const ChallengeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 100),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bool isMobile = constraints.maxWidth < 900;

          return isMobile
              ? Column(
                  children: [
                    _buildLeftImage(),
                    const SizedBox(height: 40),
                    ChallengeText(),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    const SizedBox(width: 100),
                    Expanded(flex: 1, child: ChallengeText()),

                    Expanded(flex: 1, child: _buildLeftImage()),
                  ],
                );
        },
      ),
    );
  }

  Widget _buildLeftImage() {
    return Center(
      child: Image.asset('assets/imagens/icone_challenge_3d.png', width: 420),
    );
  }
}
