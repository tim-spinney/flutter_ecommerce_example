import 'package:ecommerce/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'model/product.dart';
import 'model/sample_data.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sampleProducts.length,
      itemBuilder: (context, index) => _ProductListItem(sampleProducts[index]),
    );
  }
}

class _ProductListItem extends StatelessWidget {
  final Product product;

  const _ProductListItem(this.product);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(product.name),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(product: product)
          ),
        );
      },
    );
  }
}

