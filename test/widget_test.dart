import 'package:flutter_test/flutter_test.dart';
import 'package:first_app/app.dart';

void main() {
  testWidgets('App loads and shows main screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Main Screen'), findsOneWidget);
    expect(find.textContaining('Counter'), findsOneWidget);
  });
}