import 'package:flutter/material.dart';


class NeonChallengeCard extends StatelessWidget {
  const NeonChallengeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),

        /// Fundo translúcido escuro
        color: Colors.black.withOpacity(0.25),

        /// Borda neon dupla
        border: Border.all(
          width: 2,
          color: Colors.blueAccent.withOpacity(0.7),
        ),

        /// Glow suave externo
        boxShadow: [
          BoxShadow(
            color: Colors.blueAccent.withOpacity(0.35),
            blurRadius: 32,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Colors.purpleAccent.withOpacity(0.25),
            blurRadius: 48,
            spreadRadius: 4,
          ),
        ],

        /// Holograma sutil
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1A1B3A).withOpacity(0.45),
            const Color(0xFF243B6B).withOpacity(0.35),
            const Color(0xFF0F1124).withOpacity(0.40),
          ],
        ),
      ),
      child: Text('data')
    );
  }
}
