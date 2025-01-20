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

  String? _state;

  bool _isPrimaryAddress = false;

  _onSaveAddress() {
    if(!_formKey.currentState!.validate()) {
      return;
    }
    final address = Address(
      _line1Controller.text,
      _line2Controller.text,
      _cityController.text,
      _state!,
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
          DropdownButtonFormField<String>(
            padding: const EdgeInsets.symmetric(vertical: 8),
            value: _state,
            items: _states.map(
              (state) => DropdownMenuItem<String>(
                value: state,
                child: Text(state),
              ),
            ).toList(),
            onChanged: (selection) {
              setState(() {
                _state = selection;
              });
            },
            validator: (selection) => selection == null ? 'Select a state.' : null,
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

const List<String> _states = [
  'Alabama', 'Arizona', 'Arkansas', 'California', 'Colorado',
  'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Idaho',
  'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
  'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota',
  'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada',
  'New Hampshire', 'New Jersey', 'New Mexico', 'New York',
  'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon',
  'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota',
  'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington',
  'Washington DC', 'West Virginia', 'Wisconsin', 'Wyoming'
];