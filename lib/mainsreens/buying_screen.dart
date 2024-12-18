import 'package:flutter/material.dart';
import 'package:user1/mainsreens/thank_you_screen.dart';

class BuyingScreen extends StatelessWidget {
  const BuyingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Car Details:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Card(
                child: ListTile(
                  title: Text('Toyota Corolla XSE'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Year: 2024'),
                      Text('Price: \$28,000'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Cart Summary:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Card(
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1. Toyota Corolla XSE - \$28,000'),
                      Text('2. Delivery Fee - \$150'),
                      Divider(),
                      Text(
                        'Total Amount: \$28,150',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Payment Method:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ListTile(
                    leading:
                        Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                    title: Text('Credit/Debit Card'),
                  ),
                  ListTile(
                    leading:
                        Radio(value: 2, groupValue: 1, onChanged: (value) {}),
                    title: Text('Bank Transfer'),
                  ),
                  ListTile(
                    leading:
                        Radio(value: 3, groupValue: 1, onChanged: (value) {}),
                    title: Text('Digital Wallet'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Shipping Details:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Card(
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: John Doe'),
                      Text('Address: 1234 Elm Street, Springfield'),
                      Text('Contact: +1 234-567-8901'),
                      Text('Delivery Date: Dec 20, 2024'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ThankYouScreen()));
                    },
                    child: Text('CONFIRM PURCHASE'),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      // Cancel Order Logic
                    },
                    child: Text('CANCEL ORDER'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
