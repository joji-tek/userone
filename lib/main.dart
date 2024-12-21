import 'package:flutter/material.dart';
import 'package:user1/login/login_screen.dart';
import 'package:user1/mainsreens/ar_car_screen.dart';
import 'package:user1/mainsreens/buying_screen.dart';
import 'package:user1/mainsreens/car_detail_screen.dart';
import 'package:user1/mainsreens/main_screen.dart';
// import 'package:user1/mainsreens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF28435A), // Dark Blue
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF28435A), // Dark Blue
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: LoginScreen(),
    );
  }
}
