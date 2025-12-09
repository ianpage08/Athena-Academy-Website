import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';
import 'package:site_athena_academy/theme/text_style.dart';
import 'package:site_athena_academy/widgets/button_ishovered.dart';

class HeroText extends StatefulWidget {
  const HeroText({super.key});

  @override
  State<HeroText> createState() => _HeroTextState();
}

class _HeroTextState extends State<HeroText>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animationSlide;
  late Animation<double> _animationOpacity;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();

    _animationOpacity = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    );

    _animationSlide = Tween(begin: 20.0, end: 0.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutCubic),
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
      builder: (_, child) {
        return Opacity(
          opacity: _animationOpacity.value,
          child: Transform.translate(
            offset: Offset(0, _animationSlide.value),
            child: child,
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 22,
                      spreadRadius: -4,
                      color: Color.fromARGB(22, 255, 255, 255),
                    ),
                  ],
                ),
                child: Image.asset('assets/imagens/logo_white.png', width: 140),
              ),
              const SizedBox(height: 16),
              Text('ATHENA ACADEMY', style: AthenaTextStyle.display),
            ],
          ),

          const SizedBox(height: 32),

          Text(
            'A plataforma educacional do futuro',
            textAlign: TextAlign.center,
            style: AthenaTextStyle.subtitle,
          ),

          const SizedBox(height: 6),

          Text(
            'Uma plataforma moderna, intuitiva e feita para aproximar escolas,\n'
            'professores, alunos e pais.',
            textAlign: TextAlign.center,
            style: AthenaTextStyle.small,
          ),

          const SizedBox(height: 24),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AthenaButton(
                label: 'Baixar App Demo',
                icon: Icons.download,
                backgroundColor: AthenaColors.accent,
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              SizedBox(width: 16),
              AthenaButton(
                label: 'Explorar Repositorio',
                icon: Icons.dock,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
