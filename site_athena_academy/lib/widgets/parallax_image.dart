import 'package:flutter/material.dart';

class SoftRevealImage extends StatefulWidget {
  final String asset;
  final double width;

  const SoftRevealImage({
    super.key,
    required this.asset,
    this.width = 420,
  });

  @override
  State<SoftRevealImage> createState() => _SoftRevealImageState();
}

class _SoftRevealImageState extends State<SoftRevealImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<double> _slide;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 900),
      vsync: this,
    )..forward();

    _opacity = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _slide = Tween(begin: 20.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutCubic,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Opacity(
          opacity: _opacity.value,
          child: Transform.translate(
            offset: Offset(0, _slide.value),
            child: child,
          ),
        );
      },
      child: Image.asset(widget.asset, width: widget.width),
    );
  }
}
