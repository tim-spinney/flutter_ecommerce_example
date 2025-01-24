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
    return Column(
      children: [
        ImageCarousel(imageFilenames: product.imageFilenames),
        Text(product.name),
        Text(product.description),
        Text('Price: ${product.formattedPrice}'),
        Text('Release date: ${product.releaseDate}'),
        AddToCart(product: product,),
        ProductReviewList(reviews: product.reviews),
      ],
    );
  }
}
