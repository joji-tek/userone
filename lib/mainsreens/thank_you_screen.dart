import 'package:flutter/material.dart';
import 'package:user1/mainsreens/main_screen.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outlined,
              size: 100,
            ),
            Container(
              width: 200,
              child: Text(
                'Thank you for using our service',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MainScreen()));
              },
              child: Text('Go Back'),
            ),
          ],
        )),
      ),
    );
  }
}
