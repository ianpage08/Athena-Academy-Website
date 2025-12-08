import 'dart:ui';
import 'package:flutter/material.dart';


class GlassBox extends StatelessWidget {
  final Widget child;
  final double blur;
  final double radius;
  final EdgeInsets padding;
  final Color? overlayColor;
  final Gradient? gradient;
  final bool enableBorder;

  const GlassBox({
    super.key,
    required this.child,
    this.blur = 12,
    this.radius = 18,
    this.padding = const EdgeInsets.all(16),
    this.overlayColor,
    this.gradient,
    this.enableBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: overlayColor ?? Colors.white.withOpacity(0.06),
            gradient: gradient ??
                LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.10),
                    Colors.white.withOpacity(0.03),
                  ],
                ),
            border: enableBorder
                ? Border.all(
                    color: Colors.white.withOpacity(0.12),
                    width: 1,
                  )
                : null,
            boxShadow: [
              // Glow suave — opcional
              BoxShadow(
                color: Colors.white.withOpacity(0.03),
                blurRadius: 12,
                spreadRadius: 1,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
