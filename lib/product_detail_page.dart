import 'package:ecommerce/model/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/product.dart';
import 'product_details.dart';


class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final shoppingCart = context.watch<ShoppingCart>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text('${shoppingCart.products.length}')
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ProductDetails(product: product),
        ),
      ),
    );
  }
}
