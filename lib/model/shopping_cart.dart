
import 'package:flutter/cupertino.dart';

import 'product.dart';

class ShoppingCart with ChangeNotifier {
  final List<ProductWithQuantity> _products = [];

  add(ProductWithQuantity productWithQuantity) {
    _products.add(productWithQuantity);
    notifyListeners();
  }

  List<ProductWithQuantity> get products => [..._products];
}

class ProductWithQuantity {
  final Product product;
  final int quantity;

  const ProductWithQuantity(this.product, this.quantity);
}