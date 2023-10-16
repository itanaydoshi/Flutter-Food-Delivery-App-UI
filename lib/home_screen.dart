import 'package:flutter/material.dart';
import 'package:food_delivery_app/bottombar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(
        child: Column(
          
        ),
      ),
      bottomNavigationBar: BottomBar(
        onTabTappedList: [
          () {},
          () {},
          () {},
          () {},
        ],
        onTabTapped: (int) {},
      ),
    );
  }
}
