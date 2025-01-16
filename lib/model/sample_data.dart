import 'product.dart';
import 'product_review.dart';

final sampleProducts = [
  Product(
    'Product #1',
    'Lorem ipsum dolor sit amet, blah blah blah blah blah',
    DateTime(2024, 1, 14),
    9999,
    [
      ProductReview('Person #1', 1, 'This product is terrible!'),
      ProductReview('Person #2', 5, 'This product is great!'),
    ],
    [
      'assets/product_images/product1image1.jpeg',
      'assets/product_images/product1image2.jpeg',
    ],
  ),
  Product(
    'Product #2',
    'Lorem ipsum odor amet, consectetuer adipiscing elit. Sodales cursus est luctus curabitur habitasse ac elementum feugiat.',
    DateTime(2024, 1, 1),
    500,
    [
    ],
    [
    ],
  ),
];
