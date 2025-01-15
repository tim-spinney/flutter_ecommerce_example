import 'package:ecommerce/add_to_cart.dart';
import 'package:ecommerce/image_carousel.dart';
import 'package:ecommerce/product_review_list.dart';
import 'package:flutter/material.dart';
import 'model/product.dart';

class ProductDetails extends StatelessWidget {
  final Product product;

  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //final databaseAccessor = context.read<DatabaseAccessor>();
    //final review = databaseAccessor.reviewsRepository.getReviews(product.id);
    return Column(
      children: [
        ImageCarousel(),
        Text(product.name),
        Text('Price: ${product.formattedPrice}'),
        Text('Release date: ${product.releaseDate}'),
        AddToCart(),
        ProductReviewList(reviews: product.reviews),
      ],
    );
  }
}
