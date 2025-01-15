import 'package:ecommerce/product_review_details.dart';
import 'package:flutter/material.dart';

import 'model/product_review.dart';

class ProductReviewList extends StatelessWidget {
  final List<ProductReview> reviews;

  const ProductReviewList({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, // without this we would get layout errors due to ListView and our ancestor
                        // ScrollView getting into a conflict over element height
      itemCount: reviews.length, // right now we're using the length of the array, but we could limit this
                                 // as part of pagination if we end up with a large number of reviews
      itemBuilder: (context, index) => ProductReviewDetails(review: reviews[index]),
    );
  }
}
