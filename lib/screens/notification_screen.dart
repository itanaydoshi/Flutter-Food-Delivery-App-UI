import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/bottombar.dart';
import 'package:food_delivery_app/widgets/custom_appbar.dart';
import 'package:food_delivery_app/widgets/notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          const CustomAppBar(title: 'Notifications', icon: Icons.arrow_back),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Clear All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 200, 71, 71),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Yesterday',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
              const NotificationItem(
                title: 'You have Offer',
                content:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                time: '12:00 PM',
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
        onTabTapped: (int) {},
        onTabTappedList: const [],
      ),
    );
  }
}
