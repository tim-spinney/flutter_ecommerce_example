import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /* TextFormField would normally want to fill the width of its parent,
           but Row wants to determine its width based on its children. To resolve
           this deadlock, we use Flexible to negotiate between the two. SizedBox
           would also work, but fixed sizes don't always mesh well with accessibility
           options like text scaling set in the OS.
         */
        Flexible(
          child: TextFormField(
            initialValue: '1',
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Add to cart'),
        ),
      ],
    );
  }
}
