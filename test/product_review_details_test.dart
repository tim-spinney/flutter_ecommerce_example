import 'package:ecommerce/model/product_review.dart';
import 'package:ecommerce/product_review_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('displays the attributes of the given review', (tester) async {
    // setup / given / arrange
    final review = ProductReview(
      'me',
      3,
      'this is a comment'
    );
    // 1. Put the widget on the virtual screen
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ProductReviewDetails(review: review)
        ),
      ),
    );

    // no execution / when / act

    // validation / then / assert
    expect(find.text('me'), findsOneWidget);
    expect(find.text('this is a comment'), findsOneWidget);
    expect(find.text('3/5'), findsOneWidget);
  });
}