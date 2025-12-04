import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/challenges/challenge_text.dart';

class ChallengesCard extends StatelessWidget {
  const ChallengesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: Colors.black12,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: SizedBox(width: 450, child: ChallengeText()),
      ),
    );
  }
}
