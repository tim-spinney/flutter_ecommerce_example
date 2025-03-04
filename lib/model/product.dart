
import 'CustomizationOptions.dart';
import 'product_review.dart';

class Product {
  final String name;
  final String description;
  final DateTime releaseDate;
  final int _priceInCents;

  final CustomizationOptions? customizationOptions;

  final List<ProductReview> reviews;

  final List<String> imageFilenames;

  String get formattedPrice => '\$${(_priceInCents / 100.0).toStringAsFixed(2)}';

  const Product(this.name, this.description, this.releaseDate, this._priceInCents, this.reviews, this.imageFilenames, { this.customizationOptions });
}