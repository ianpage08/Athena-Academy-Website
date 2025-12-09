import 'package:flutter/material.dart';

import 'package:site_athena_academy/sections/challenges/challenge_section.dart';
import 'package:site_athena_academy/sections/features/features_section.dart';
import 'package:site_athena_academy/sections/header/header_section.dart';
import 'package:site_athena_academy/sections/hero_section/hero_section.dart';
import 'package:site_athena_academy/sections/road_map/road_map_section.dart';
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

                
                ChallengeSection(scrollController: _ontroller),
                const SizedBox(height: 40),

                const SolveSection(),

                const SizedBox(height: 40),

                const FeaturesSection(),

                const SizedBox(height: 60),

                const FutureSection(),

                RoadmapSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
