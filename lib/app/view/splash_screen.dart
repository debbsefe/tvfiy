import 'package:flutter/material.dart';

/// Placeholder Screen to be rendered until the first screen is determined
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static PageRoute getRoute() => MaterialPageRoute<void>(
        builder: (_) => const SplashScreen(),
        settings: const RouteSettings(name: '/splash'),
      );

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
