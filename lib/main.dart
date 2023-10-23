import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/a.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: CounterScreen(),
    );
  }
}
