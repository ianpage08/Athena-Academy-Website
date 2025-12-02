import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/header/header_buttons.dart';

class HeaderSection extends StatelessWidget implements PreferredSizeWidget {
  const HeaderSection({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('ATHENA ACADEMY'),
      backgroundColor: const Color.fromARGB(255, 186, 181, 212),

      actions: [HeaderButtons()],
    );
  }
}
