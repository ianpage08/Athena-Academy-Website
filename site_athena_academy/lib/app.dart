import 'package:flutter/material.dart';

import 'package:site_athena_academy/sections/challenges/challenge_section.dart';
import 'package:site_athena_academy/sections/features/features_section.dart';
import 'package:site_athena_academy/sections/header/header_section.dart';
import 'package:site_athena_academy/sections/hero_section/hero_section.dart';
import 'package:site_athena_academy/sections/solve/solve_section.dart';
import 'package:site_athena_academy/sections/ssj/section.dart';
import 'package:site_athena_academy/theme/backgroud.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(72),
        child: HeaderSection(),
      ),
      body: AppBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                const SizedBox(height: 100),
                HeroSection(),

                ChallengeSection(),
                Divider(),
                SolveSection(),
                Divider(),
                const SizedBox(height: 20),
                FeaturesSection(),
                Divider(),
                const SizedBox(height: 50),
                Section(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
