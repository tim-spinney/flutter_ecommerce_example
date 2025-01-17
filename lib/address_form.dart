import 'package:flutter/material.dart';

import 'model/address.dart';

class AddressForm extends StatefulWidget {
  const AddressForm({super.key});

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  final _formKey = GlobalKey<FormState>();
  final _line1Controller = TextEditingController();
  final _line2Controller = TextEditingController();

  final _cityController = TextEditingController();

  final _zipCodeController = TextEditingController();

  bool _isPrimaryAddress = false;

  _onSaveAddress() {
    if(!_formKey.currentState!.validate()) {
      return;
    }
    final address = Address(
      _line1Controller.text,
      _line2Controller.text,
      _cityController.text,
      '',
      _zipCodeController.text,
    );
    _formKey.currentState!.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Address line 1'),
            controller: _line1Controller,
            validator: (input) {
              if(input == null || input.isEmpty) {
                return 'Line 1 cannot be empty.';
              }
              return null;
            },
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
      ),
    );
  }
}
