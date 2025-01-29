import 'package:ecommerce/model/CustomizationOptions.dart';
import 'package:ecommerce/model/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model/product.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  final Function addToCart;

  const AddToCart({super.key, required this.product, required this.addToCart});

  @override createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _quantityController = TextEditingController(text: '1');
  String? _colorChoice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(widget.product.customizationOptions is ColorCustomizationOptions) DropdownButton<String>(
          value: _colorChoice,
          items: (widget.product.customizationOptions as ColorCustomizationOptions).colors.map(
              (color) => DropdownMenuItem<String>(
                value: color,
                child: Text(
                    color
                )
              ),
          ).toList(),
          onChanged: (newValue) {
            setState(() {
              _colorChoice = newValue;
            });
          }
        ),
        Row(
          children: [
            /* TextFormField would normally want to fill the width of its parent,
               but Row wants to determine its width based on its children. To resolve
               this deadlock, we use Flexible to negotiate between the two. SizedBox
               would also work, but fixed sizes don't always mesh well with accessibility
               options like text scaling set in the OS.
             */
            Flexible(
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                controller: _quantityController,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                widget.addToCart(
                    ProductWithQuantity(
                      widget.product,
                      int.parse(_quantityController.text)
                    )
                );
              },
              child: const Text('Add to cart'),
            ),
          ],
        ),
      ],
    );
  }
}
