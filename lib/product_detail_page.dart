import 'package:flutter/material.dart';
import 'model/sample_data.dart';
import 'product_details.dart';


class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ProductDetails(product: sampleProducts[0]),
        ),
      ),
    );
  }
}
