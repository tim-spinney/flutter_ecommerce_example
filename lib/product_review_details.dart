import 'package:ecommerce/model/product_review.dart';
import 'package:flutter/material.dart';

class ProductReviewDetails extends StatelessWidget {
  final ProductReview review;

  const ProductReviewDetails({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(review.username),
      subtitle: Text(review.comment),
      leading: Text('${review.rating}/5'),
    );
  }
}
