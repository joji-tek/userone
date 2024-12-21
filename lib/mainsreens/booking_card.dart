import 'package:flutter/material.dart';

class BookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookingScreen(),
    );
  }
}

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BookingCard(),
      ),
    );
  }
}

class BookingCard extends StatefulWidget {
  @override
  _BookingCardState createState() => _BookingCardState();
}

class _BookingCardState extends State<BookingCard> {
  DateTime? _pickupDate = DateTime(2024, 12, 21);
  DateTime? _returnDate = DateTime(2024, 12, 26);

  Future<void> _selectDate(BuildContext context, bool isPickup) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isPickup ? _pickupDate! : _returnDate!,
      firstDate: DateTime(2024),
      lastDate: DateTime(2030),
    );

    if (picked != null && picked != (isPickup ? _pickupDate : _returnDate)) {
      setState(() {
        if (isPickup) {
          _pickupDate = picked;
        } else {
          _returnDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Color(0xFFEAE7DA), // Light Cream
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pickup Location:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF28435A), // Dark Blue
              ),
            ),
            SizedBox(height: 4),
            Text(
              '789 Main Street, Downtown',
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pickup Date:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xFF28435A), // Dark Blue
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '${_pickupDate?.toLocal().toString().split(' ')[0]}',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => _selectDate(context, true),
                  icon: Icon(Icons.calendar_today),
                  label: Text('Change'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Return Location:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF28435A), // Dark Blue
              ),
            ),
            SizedBox(height: 4),
            Text(
              '789 Main Street, Downtown',
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Return Date:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xFF28435A), // Dark Blue
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '${_returnDate?.toLocal().toString().split(' ')[0]}',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => _selectDate(context, false),
                  icon: Icon(Icons.calendar_today),
                  label: Text('Change'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
