import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AnimatedOnScroll extends StatefulWidget {
  final Widget child;

  // deslocamentos iniciais
  final double offsetX;     // horizontal (esquerda/direita)
  final double offsetY;     // vertical (cima/baixo)

  final Duration duration;
  final Duration delay;

  const AnimatedOnScroll({
    super.key,
    required this.child,
    this.offsetX = 0,                // novo
    this.offsetY = 40,               // já existia
    this.duration = const Duration(milliseconds: 900),
    this.delay = Duration.zero,
  });

  @override
  State<AnimatedOnScroll> createState() => _AnimatedOnScrollState();
}

class _AnimatedOnScrollState extends State<AnimatedOnScroll>
    with SingleTickerProviderStateMixin {
  
  late AnimationController _controller;
  late Animation<double> _opacity;

  late Animation<double> _slideX;   // novo
  late Animation<double> _slideY;

  bool _isVisible = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _opacity = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _slideX = Tween(begin: widget.offsetX, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );

    _slideY = Tween(begin: widget.offsetY, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );
  }

  void _startAnimation() async {
    if (_isVisible) return;

    _isVisible = true;

    await Future.delayed(widget.delay);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.20) {
          _startAnimation();
        }
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, child) {
          return Opacity(
            opacity: _opacity.value,
            child: Transform.translate(
              offset: Offset(_slideX.value, _slideY.value),
              child: child,
            ),
          );
        },
        child: widget.child,
      ),
    );
  }
}
