import 'package:flutter/material.dart';

class HeroMockup extends StatefulWidget {
  const HeroMockup({super.key});

  @override
  State<HeroMockup> createState() => _HeroMockupState();
}

class _HeroMockupState extends State<HeroMockup>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animationTime;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _animationTime = Tween(begin: 0.0, end: -8.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animationTime.value),
          child: child,
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            // sombra profunda
            BoxShadow(
              color: Color.fromARGB(34, 0, 0, 0),
              blurRadius: 90,
              offset: Offset(0, 50),
            ),
            // glow branco suave
            BoxShadow(
              color: Color.fromARGB(40, 255, 255, 255),
              blurRadius: 140,
              offset: Offset(0, 20),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset('assets/imagens/hero_4.png', width: 700),
        ),
      ),
    );
  }
}
