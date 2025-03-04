
import 'package:flutter/cupertino.dart';

import 'product.dart';

class ShoppingCart with ChangeNotifier {
  final List<ProductWithQuantity> _products = [];
  // FirebaseFirestore _firestore;
  // getCart() => _firestore.collection('shopping_carts').doc(userId)

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductWithQuantity &&
          runtimeType == other.runtimeType &&
          product == other.product &&
          quantity == other.quantity;

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode;
}