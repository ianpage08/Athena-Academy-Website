import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';
import 'package:site_athena_academy/widgets/button_ishovered.dart';
import 'package:site_athena_academy/theme/text_style.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,

      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            decoration: BoxDecoration(),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 32),
                    Image.asset('assets/imagens/logo_icon.png', width: 40),
                    const SizedBox(width: 12),
                    Text("ATHENA ACADEMY", style: AthenaTextStyle.headerTitle),
                  ],
                ),

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
