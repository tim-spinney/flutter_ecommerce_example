
import 'product.dart';

class ShoppingCart {
  final List<ProductWithQuantity> products = [];

}

class ProductWithQuantity {
  final Product product;
  final int quantity;

  const ProductWithQuantity(this.product, this.quantity);
}