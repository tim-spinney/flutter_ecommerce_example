import 'package:flutter/material.dart';
import 'model/product.dart';
import 'model/shopping_cart.dart';
import 'product_details.dart';


class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  final _shoppingCart = ShoppingCart();

  addToCart(ProductWithQuantity product) {
    setState(() {
      _shoppingCart.products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text('${_shoppingCart.products.length}')
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ProductDetails(product: widget.product, addToCart: addToCart,),
        ),
      ),
    );
  }
}
