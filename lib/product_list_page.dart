import 'package:ecommerce/profile_page.dart';
import 'package:flutter/material.dart';

import 'product_list.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const ProfilePage()
                ),
              );
            },
          ),
        ],
      ),
      body: const ProductList(),
    );
  }
}
