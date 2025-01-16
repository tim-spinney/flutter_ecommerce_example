import 'package:flutter/material.dart';

import 'product_list.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductList(),
    );
  }
}
