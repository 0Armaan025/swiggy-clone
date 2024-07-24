import 'package:flutter/material.dart';
import 'package:swiggy_clone/features/views/address/address_view.dart';
import 'package:swiggy_clone/features/views/home/home_view.dart';
import 'package:swiggy_clone/features/views/location/location_screen.dart';
import 'package:swiggy_clone/features/views/onboarding/onboarding_view.dart';
import 'package:swiggy_clone/features/views/otp/otp_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
