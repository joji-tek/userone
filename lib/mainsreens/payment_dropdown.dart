import 'package:flutter/material.dart';

class PaymentDropdown extends StatefulWidget {
  @override
  _PaymentDropdownState createState() => _PaymentDropdownState();
}

class _PaymentDropdownState extends State<PaymentDropdown> {
  String? _selectedPaymentMethod;

  final List<String> _paymentMethods = [
    'Credit/Debit Card',
    'Bank Transfer',
    'Digital Wallet',
    'Cash at Pickup',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: _selectedPaymentMethod,
          hint: Text('Select Payment Method'),
          items: _paymentMethods.map((method) {
            return DropdownMenuItem<String>(
              value: method,
              child: Text(method),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedPaymentMethod = value;
            });
          },
        ),
        if (_selectedPaymentMethod != null)
          Text('Selected: $_selectedPaymentMethod'),
      ],
    );
  }
}
