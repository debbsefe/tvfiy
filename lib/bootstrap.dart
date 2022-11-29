// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:tvfiy/core/core.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function(ProviderContainer container) builder,
  AppConfig config,
) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();

  final container = ProviderContainer(
    overrides: [
      appConfigProvider.overrideWithValue(config),
    ],
  );

  initLogger(config.flavor);

  runApp(await builder(container));
}

void initLogger(Flavor flavor) {
  Logger.root.level = flavor == Flavor.dev ? Level.ALL : Level.WARNING;
  Logger.root.onRecord.listen(
    (record) {
      final log = '[${record.loggerName}] ${record.level.name}: '
          '${record.time}: ${record.message}'
          '${record.stackTrace != null ? '\n${record.stackTrace}' : ''}';
      if (kDebugMode) {
        print(log);
      }
    },
  );
}
