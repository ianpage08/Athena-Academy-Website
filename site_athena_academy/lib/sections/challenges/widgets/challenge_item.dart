import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChallengeItem extends StatefulWidget {
  final String title;
  final Color iconBg;
  final IconData icon;
  final Color iconColor;

  const ChallengeItem({
    super.key,
    required this.title,
    required this.iconBg,
    required this.icon,
    required this.iconColor,
  });

  @override
  State<ChallengeItem> createState() => _ChallengeItemState();
}

class _ChallengeItemState extends State<ChallengeItem> {
  bool isHovered = false;

  bool get _enableHover => kIsWeb || defaultTargetPlatform == TargetPlatform.macOS || defaultTargetPlatform == TargetPlatform.windows || defaultTargetPlatform == TargetPlatform.linux;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget content = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Ícone circular
        Container(
          decoration: BoxDecoration(
            color: widget.iconBg,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(8),
          child: Icon(widget.icon, color: widget.iconColor, size: 18),
        ),

        const SizedBox(width: 16),

        Expanded(
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );

    // Só habilita MouseRegion em plataformas com mouse
    final child = _enableHover
        ? MouseRegion(
            onEnter: (_) => setState(() => isHovered = true),
            onExit: (_) => setState(() => isHovered = false),
            cursor: SystemMouseCursors.click,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              curve: Curves.easeOut,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              margin: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
                boxShadow: isHovered ? [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 12, offset: const Offset(0,4))] : null,
              ),
              child: content,
            ),
          )
        : Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            margin: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
            ),
            child: content,
          );

    return Semantics(
      button: true,
      label: widget.title,
      child: child,
    );
  }
}
