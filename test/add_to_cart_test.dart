import 'package:ecommerce/add_to_cart.dart';
import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/model/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'add_to_cart_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ShoppingCart>()])
main() {
  final product = Product(
      'Mechanical pencil, .9mm',
      'efaregtrhsrerhs5egdyhtdh',
      DateTime(2025, 1, 1),
      50,
      [],
      []
  );

  testWidgets('pressing button adds product to cart', (tester) async {
    // setup / given / arrange
    final cart = MockShoppingCart();

    // 1. Put the widget on the virtual screen
    await tester.pumpWidget(
      ChangeNotifierProvider<ShoppingCart>.value(
        value: cart,
        child: MaterialApp(
          home: Scaffold(
              body: AddToCart(product: product)
          ),
        ),
      ),
    );

    // execution / when / act
    final buttonFinder = find.text('Add to cart');
    expect(buttonFinder, findsOneWidget);
    await tester.tap(buttonFinder);

    // validation / then / assert
    verify(cart.add(ProductWithQuantity(product, 1)));
  });

  testWidgets('entering a non-integer into quantity field does nothing', (tester) async {

  });

  testWidgets('entered integer quantity gets added to cart', (tester) async {

  });

  testWidgets('displays default quantity and add button', (tester) async {

  });
}