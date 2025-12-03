import 'package:flutter/material.dart';

class AthenaButton extends StatefulWidget {
  final String label;
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback? onPressed;

  /// ALTURA PADRÃO DO SISTEMA
  final double height;

  /// LARGURA OPCIONAL (se null o botão se adapta ao conteúdo)
  final double? width;

  const AthenaButton({
    super.key,
    required this.label,
    required this.icon,
    required this.backgroundColor,
    required this.foregroundColor,
    this.onPressed,
    this.height = 48, // tamanho padrão
    this.width, // null = usa o tamanho do conteúdo
  });

  @override
  State<AthenaButton> createState() => _AthenaButtonState();
}

class _AthenaButtonState extends State<AthenaButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHover = true),
      onExit: (_) => setState(() => _isHover = false),

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,

        height: widget.height,
        width: widget.width, // se for null, tamanho automático

        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: _isHover
              ? widget.backgroundColor.withOpacity(0.85)
              : widget.backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: _isHover
              ? [
                  BoxShadow(
                    color: widget.backgroundColor.withOpacity(0.35),
                    blurRadius: 12,
                    spreadRadius: 1,
                  ),
                ]
              : [],
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(widget.icon, color: widget.foregroundColor, size: 18),
            const SizedBox(width: 8),
            Text(
              widget.label,
              style: TextStyle(
                color: widget.foregroundColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
