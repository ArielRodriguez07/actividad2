import 'package:flutter/material.dart';
import 'Screen/profile_3.dart';
import 'Screen/profile_1.dart';
import 'Screen/profile_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile3(),
    );
  }
}