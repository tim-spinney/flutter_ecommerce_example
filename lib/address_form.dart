import 'package:flutter/material.dart';

class AddressForm extends StatefulWidget {
  const AddressForm({super.key});

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  final _line1Controller = TextEditingController();
  final _line2Controller = TextEditingController();

  final _cityController = TextEditingController();

  final _zipCodeController = TextEditingController();

  bool _isPrimaryAddress = false;

  _onSaveAddress() {

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: 'Address line 1'),
          controller: _line1Controller,
        ), // line 1
        TextFormField(
          decoration: const InputDecoration(labelText: 'Address line 2'),
          controller: _line2Controller,
        ), // line 2
        TextFormField(
          decoration: const InputDecoration(labelText: 'City'),
          controller: _cityController,
        ), // city
        TextFormField(
          decoration: const InputDecoration(labelText: 'State'),
        ), // state
        TextFormField(
          decoration: const InputDecoration(labelText: 'ZIP code'),
          controller: _zipCodeController,
        ), // zip
        Checkbox(
          value: _isPrimaryAddress,
          onChanged: (newValue) {
            if(newValue != null) {
              setState(() {
                _isPrimaryAddress = newValue;
              });
            }
          },
        ),
        ElevatedButton(
          child: const Text('Save'),
          onPressed: _onSaveAddress,
        ),
      ],
    );
  }
}
