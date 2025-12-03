import 'package:flutter/material.dart';

import 'package:site_athena_academy/sections/hero_section/hero_buttons.dart';
import 'package:site_athena_academy/theme/text_style.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final bool isMobile = constraints.maxWidth < 900;

            return Flex(
              direction: isMobile ? Axis.vertical : Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: isMobile ? 0 : 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: isMobile ? 0 : 32,
                      bottom: isMobile ? 32 : 0,
                    ),
                    child: _buildTextContent(),
                  ),
                ),

                // IMAGE AREA
                Expanded(
                  flex: isMobile ? 0 : 1,
                  child: Center(
                    child: Image.asset(
                      'assets/imagens/hero_1.png',
                      width: isMobile ? 350 : 550,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildTextContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/imagens/logo_icon.png', width: 180),
            const SizedBox(height: 12),
            Text('ATHENA ACADEMY', style: AthenaTextStyle.display),
          ],
        ),

        const SizedBox(height: 32),

        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'A plataforma educacional do futuro\n',
                style: AthenaTextStyle.subtitle,
              ),
              TextSpan(text: '\n'),
              TextSpan(
                text:
                    'Uma plataforma moderna, intuitiva e feita para aproximar escolas,\nprofessores, alunos e pais.',
                style: AthenaTextStyle.small,
              ),
            ],
          ),
        ),

        const SizedBox(height: 32),

        // BUTTONS
        const HeroButtons(),
      ],
    );
  }
}
