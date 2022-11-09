import 'package:flutter_riverpod/flutter_riverpod.dart';

final appConfigProvider =
    Provider<AppConfig>((ref) => throw UnimplementedError());

enum Flavor {
  dev,
  staging,
  production,
}

class AppConfig {
  AppConfig({
    required this.flavor,
    required this.baseUrl,
  });

  final Flavor flavor;
  final String baseUrl;
}
