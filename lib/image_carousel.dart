import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> imageFilenames;

  const ImageCarousel({super.key, required this.imageFilenames});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(imageFilenames.first),
    );
  }
}
