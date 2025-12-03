import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';
import 'package:site_athena_academy/widgets/button_ishovered.dart';
import 'package:site_athena_academy/theme/text_style.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // Blur dinâmico para melhorar performance em mobile
    final double blur = width < 900 ? 10 : 24;

    return Container(
      height: 72,
      child: ClipRRect(
        borderRadius: BorderRadius.zero, // Fixo no topo
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            decoration: BoxDecoration(
              // Camada GLASS principal
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.5), // brilho no topo
                  Colors.white.withOpacity(0.10), // mais translúcido abaixo
                ],
              ),

              // Borda inferior mais refinada
              border: Border(
                bottom: BorderSide(
                  color: Colors.white.withOpacity(0.35),
                  width: 1,
                ),
              ),

              // Sombra leve (flutuação)
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 16,
                  offset: Offset(0, 4),
                ),
              ],
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // LOGO + TEXTO
                Row(
                  children: [
                    const SizedBox(width: 32),
                    Image.asset('assets/imagens/logo_icon.png', width: 40),
                    const SizedBox(width: 12),
                    Text("ATHENA ACADEMY", style: AthenaTextStyle.headerTitle),
                  ],
                ),

                // BOTÕES
                Row(
                  children: [
                    AthenaButton(
                      height: 40,
                      label: 'Baixar App Demo',
                      icon: Icons.download,
                      backgroundColor: AthenaColors.accent,
                      foregroundColor: Colors.white,
                    ),
                    const SizedBox(width: 12),
                    AthenaButton(
                      height: 40,
                      label: 'Explorar Repositório',
                      icon: Icons.dock,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    const SizedBox(width: 32),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
