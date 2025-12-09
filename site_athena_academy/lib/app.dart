import 'package:flutter/material.dart';

import 'package:site_athena_academy/sections/challenges/challenge_section.dart';
import 'package:site_athena_academy/sections/features/features_section.dart';
import 'package:site_athena_academy/sections/header/header_section.dart';
import 'package:site_athena_academy/sections/hero_section/hero_section.dart';
import 'package:site_athena_academy/sections/solve/solve_section.dart';
import 'package:site_athena_academy/sections/future_section/section.dart';
import 'package:site_athena_academy/theme/backgroud.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final ScrollController _ontroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: HeaderSection(),
      ),
      body: AppBackground(
        child: SingleChildScrollView(
          controller: _ontroller,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                const SizedBox(height: 100),
                const HeroSection(),

                // agora sim o parallax funciona
                ChallengeSection(scrollController: _ontroller),

                const Divider(),
                const SolveSection(),
                const Divider(),
                const SizedBox(height: 20),

                const FeaturesSection(),
                const Divider(),
                const SizedBox(height: 50),

                const FutureSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
