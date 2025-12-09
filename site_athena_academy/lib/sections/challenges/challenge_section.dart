import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/challenges/challenge_text.dart';
import 'package:site_athena_academy/widgets/animated_scroll.dart';

import 'package:site_athena_academy/widgets/parallax_image.dart';

class ChallengeSection extends StatelessWidget {
  final ScrollController scrollController;

  const ChallengeSection({super.key, required this.scrollController});

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
                    Image.asset('assets/imagens/icone_challenge_3d.png'),

                    const SizedBox(height: 40),
                    const ChallengeText(),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(flex: 2, child: ChallengeText()),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: AnimatedOnScroll(
                          child: SoftRevealImage(
                            asset: 'assets/imagens/icone_challenge_3d.png',
                            width: 500,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
