import 'package:flutter/material.dart';
import 'package:site_athena_academy/core/constants/colors.dart';

class AthenaBackground extends StatelessWidget {
  final Widget child;

  const AthenaBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AthenaColors.bodyGradient),
      child: child,
    );
  }
}
