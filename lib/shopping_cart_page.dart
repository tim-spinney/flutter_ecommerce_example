import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/shopping_cart.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    /*final products = context.select<ShoppingCart, List<ProductWithQuantity>>(
            (cart) => cart.products
    );*/
    final products = context.watch<ShoppingCart>().products;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) => Card(
          child: Column(
            children: [
              Text(products[i].product.name),
              Text('${products[i].quantity}'),
            ],
          )
        ),
      ),
    );
  }
}
