import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AnimatedOnScroll extends StatefulWidget {
  final Widget child;
  final double offset;      // deslocamento Y
  final Duration duration;  // duração da animação
  final Duration delay;     // delay opcional

  const AnimatedOnScroll({
    super.key,
    required this.child,
    this.offset = 40,
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
  late Animation<double> _slideY;

  bool _isVisible = false;

  @override
  void initState() {
    super.initState();

    // controle geral da animação
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    // anima opacidade de 0 → 1
    _opacity = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    // anima deslocamento (desce 40px → 0)
    _slideY = Tween(begin: widget.offset, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );
  }

  void _startAnimation() async {
    if (_isVisible) return;

    _isVisible = true;

    // espera o delay definido
    await Future.delayed(widget.delay);

    _controller.forward();
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
              offset: Offset(0, _slideY.value),
              child: child,
            ),
          );
        },
        child: widget.child,
      ),
    );
  }
}
