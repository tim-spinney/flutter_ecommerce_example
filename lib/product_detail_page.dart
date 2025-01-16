import 'package:flutter/material.dart';
import 'model/product.dart';
import 'product_details.dart';


class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ProductDetails(product: product),
        ),
      ),
    );
  }
}
