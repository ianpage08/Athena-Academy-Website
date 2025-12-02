import 'package:flutter/material.dart';
import 'package:site_athena_academy/sections/header/header_section.dart';
import 'package:site_athena_academy/sections/header/hero_section/hero_section.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 218, 223),
      appBar: HeaderSection(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [HeroSection()]),
        ),
      ),
    );
  }
}
