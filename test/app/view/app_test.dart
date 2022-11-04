import 'package:flutter_test/flutter_test.dart';
import 'package:tvfiy/app/app.dart';

void main() {
  group('App', () {
    testWidgets('renders SplashScreen', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(SplashScreen), findsOneWidget);
    });
  });
}
