import 'package:ecommerce/add_to_cart.dart';
import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/model/shopping_cart.dart';
import 'package:ecommerce/shopping_cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'add_to_cart_test.mocks.dart';

main() {
  testWidgets('displays the name and quantity of each item', (tester) async {
    // setup
    final products = [
      ProductWithQuantity(Product(
          'Mechanical pencil, .9mm',
          'efaregtrhsrerhs5egdyhtdh',
          DateTime(2025, 1, 1),
          50,
          [],
          []
      ), 4),
      ProductWithQuantity(Product(
          'Dry erase marker',
          'efaregtrhsrerhs5egdyhtdh',
          DateTime(2025, 1, 1),
          50,
          [],
          []
      ), 1),
    ];
    final cart = MockShoppingCart();
    when(cart.products).thenReturn(products);

    await tester.pumpWidget(
      ChangeNotifierProvider<ShoppingCart>.value(
        value: cart,
        child: const MaterialApp(
          home: ShoppingCartPage(),
        ),
      ),
    );

    // no execution needed

    // validation
    // check if first product's name is visible
    expect(find.text('Mechanical pencil, .9mm'), findsOneWidget);
    // check if first product's quantity is visible
    expect(find.text('4'), findsOneWidget);
    // check if second product's name is visible
    expect(find.text('Dry erase marker'), findsOneWidget);
    // check if second product's quantity is visible
    expect(find.text('1'), findsOneWidget);
    // extra thorough: check if name & quantity w/in same Card
  });
}