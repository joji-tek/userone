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
      home: LoginScreen(),
    );
  }
}
