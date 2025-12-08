import 'package:flutter/material.dart';
import 'hero_background.dart';
import 'hero_card.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          HeroBackground(),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1600),
              child: HeroCard(),
            ),
          ),
        ],
      ),
    );
  }
}
