import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Details'),
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
                  title: Text('Hyundai Tucson SEL'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Year: 2023'),
                      Text('Rental Price/Day: \$65'),
                      Text('Rental Duration: 5 Days'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Rental Summary:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Card(
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1. Hyundai Tucson SEL (\$65/day x 5 days) - \$325'),
                      Text('2. Insurance Coverage - \$50'),
                      Text('3. Taxes & Fees - \$30'),
                      Divider(),
                      Text(
                        'Total Amount: \$405',
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
                  ListTile(
                    leading:
                        Radio(value: 4, groupValue: 1, onChanged: (value) {}),
                    title: Text('Cash at Pickup'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Pickup & Return Details:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Card(
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pickup Location: 789 Main Street, Downtown'),
                      Text('Pickup Date: Dec 21, 2024'),
                      Text('Return Location: 789 Main Street, Downtown'),
                      Text('Return Date: Dec 26, 2024'),
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
                      // Confirm Rental Logic
                    },
                    child: Text('CONFIRM RENTAL'),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      // Cancel Rental Logic
                    },
                    child: Text('CANCEL RENTAL'),
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
