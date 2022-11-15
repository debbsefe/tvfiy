import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tvfiy/app/app.dart';

void main() {
  final container = ProviderContainer();
  group('App', () {
    testWidgets('renders SplashScreen', (tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: const App(),
        ),
      );
      expect(find.byType(SplashScreen), findsOneWidget);
    });
  });
}
