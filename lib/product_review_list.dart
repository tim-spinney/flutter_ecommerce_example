import 'package:ecommerce/product_review_details.dart';
import 'package:flutter/material.dart';

import 'model/product_review.dart';

class ProductReviewList extends StatelessWidget {
  final List<ProductReview> reviews;

  const ProductReviewList({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: reviews.map(
              (productReview) => ProductReviewDetails(review: productReview,)
      ).toList(),
    );
  }
}
