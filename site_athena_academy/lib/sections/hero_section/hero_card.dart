import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/hero_section/hero_mockoup.dart';
import 'hero_text.dart';


class HeroCard extends StatelessWidget {
  const HeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: _prismGlass,

        /// Layout responsivo do hero
        child: LayoutBuilder(
          builder: (context, constraints) {
            final bool mobile = constraints.maxWidth < 900;

            return Flex(
              direction: mobile ? Axis.vertical : Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Texto
                Expanded(
                  flex: mobile ? 0 : 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: mobile ? 0 : 32,
                      bottom: mobile ? 32 : 0,
                    ),
                    child: const HeroText(),
                  ),
                ),

                /// Mockup flutuando (IA MAX)
                Expanded(
                  flex: mobile ? 0 : 1,
                  child: const HeroMockup(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

/// ❄ Efeito Glass Prismático Avançado
final BoxDecoration _prismGlass = BoxDecoration(
  borderRadius: BorderRadius.circular(32),
  color: Colors.white.withOpacity(0.10),

  /// Borda luminosa prismática
  border: Border.all(
    color: Colors.white.withOpacity(0.28),
    width: 1.2,
  ),

  /// Sombra premium IA
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.08),
      blurRadius: 40,
      offset: Offset(0, 22),
    ),
  ],

  /// Gradiente prismático leve
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.white.withOpacity(0.25),
      Colors.white.withOpacity(0.08),
    ],
  ),
);
