import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Product name'),
        Text('Price: \$99.99'),
        Text('Release date: 2024-01-14'),
      ],
    );
  }
}
