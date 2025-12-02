import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/header/header_section.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 44, 49),
      appBar: HeaderSection(),
    );
  }
}
