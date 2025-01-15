import 'package:ecommerce/product_review_details.dart';
import 'package:flutter/material.dart';

import 'model/product_review.dart';

class ProductReviewList extends StatelessWidget {
  final List<ProductReview> reviews;

  const ProductReviewList({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true, // without this we would get layout errors due to ListView and our ancestor
                        // ScrollView getting into a conflict over element height
      children: reviews.map(
              (productReview) => ProductReviewDetails(review: productReview,)
      ).toList(),
    );
  }
}
