import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';


class ChallengesCard extends StatelessWidget {
  const ChallengesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AthenaColors.athenaSoftGlass,
      constraints: const BoxConstraints(maxWidth: 600),
      padding: const EdgeInsets.all(32),
      child: const Text('12'),
    );
  }
}
