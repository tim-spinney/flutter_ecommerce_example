import 'package:ecommerce/product_details.dart';
import 'package:ecommerce/model/product_review.dart';
import 'package:flutter/material.dart';

import 'model/product.dart';

final _sampleData = Product(
  'Product #1',
  'Lorem ipsum dolor sit amet, blah blah blah blah blah',
  DateTime.now(),
  9999,
  [
    ProductReview('Person #1', 1, 'This product is terrible!'),
    ProductReview('Person #2', 5, 'This product is great!'),
  ],
  [
    'assets/product_images/product1image1.jpeg',
    'assets/product_images/product1image2.jpeg',
  ],
);

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ProductDetails(product: _sampleData),
        ),
      ),
    );
  }
}
