

import 'package:ecommerce/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('displays product details after selecting a specific product',
          (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(ElevatedButton), findsNWidgets(2));

    await Future.delayed(Duration(seconds: 3));

    await tester.tap(find.byType(ElevatedButton).last);
    await tester.pumpAndSettle();

    await Future.delayed(Duration(seconds: 3));

    expect(find.textContaining('Lorem ipsum'), findsOneWidget);
    expect(find.textContaining('\$5.00'), findsOneWidget);
  });
}