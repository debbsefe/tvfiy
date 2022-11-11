import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tvfiy/app/view/splash_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier();

  return GoRouter(routes: router.routes, refreshListenable: router);
});

class RouterNotifier extends ChangeNotifier {
  final routes = [
    GoRoute(
      path: '/', //TODO: change splash and main screen
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
  ];
}
