import 'package:tvfiy/app/app.dart';
import 'package:tvfiy/bootstrap.dart';
import 'package:tvfiy/core/core.dart';

void main() {
  final config = AppConfig(flavor: Flavor.staging, baseUrl: 'baseUrl');
  bootstrap(
    (container) => App(
      container: container,
    ),
    config,
  );
}
