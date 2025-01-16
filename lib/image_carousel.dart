import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> imageFilenames;

  const ImageCarousel({super.key, required this.imageFilenames});

  @override
  Widget build(BuildContext context) {
    if(imageFilenames.isEmpty) {
      return const SizedBox();
    }
    return Image(
      image: AssetImage(imageFilenames.first),
    );
  }
}
