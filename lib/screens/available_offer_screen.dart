import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/bottombar.dart';
import 'package:food_delivery_app/widgets/custom_appbar.dart';
import 'package:food_delivery_app/widgets/offeritem.dart';

class AvailableOffer extends StatelessWidget {
  AvailableOffer({super.key});

  final List<Map<String, String>> offers = [
    {'title': '20% Discount to new just click users', 'date': '26/12/2023'},
    {'title': '10 THB Discount', 'date': '26/12/2023'},
    {'title': '20% Discount for SCB Users', 'date': '26/12/2023'},
    {'title': '10 THB Discount', 'date': '26/12/2023'},
    {'title': '20% Discount to new just click users', 'date': '26/12/2023'},
    {'title': '10 THB Discount', 'date': '26/12/2023'},
    {'title': '20% Discount for SCB Users', 'date': '26/12/2023'},
    {'title': '10 THB Discount', 'date': '26/12/2023'},
    {'title': '20% Discount to new just click users', 'date': '26/12/2023'},
    {'title': '10 THB Discount', 'date': '26/12/2023'},
    {'title': '20% Discount for SCB Users', 'date': '26/12/2023'},
    {'title': '10 THB Discount', 'date': '26/12/2023'},
    {'title': '20% Discount to new just click users', 'date': '26/12/2023'},
    {'title': '10 THB Discount', 'date': '26/12/2023'},
    {'title': '20% Discount for SCB Users', 'date': '26/12/2023'},
    {'title': '10 THB Discount', 'date': '26/12/2023'},
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      appBar:
          const CustomAppBar(title: 'Available Offer', icon: Icons.arrow_back),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: offers.length,
          itemBuilder: (context, index) {
            return OfferItem(
              title: offers[index]['title']!,
              expirationDate: offers[index]['date']!,
            );
          },
        ),
      ),
      bottomNavigationBar: BottomBar(
        onTabTapped: (int) {},
        onTabTappedList: const [],
      ),
    );
  }
}
