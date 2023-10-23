import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/bottombar.dart';
import 'package:food_delivery_app/widgets/custom_appbar.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 244, 246, 1),
      appBar: const CustomAppBar(title: 'Account', icon: Icons.arrow_back),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage('assets/images/person/p1.png'),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ayma Shah',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Seller',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 40),
                    Icon(
                      Icons.edit_square,
                      color: Colors.blueGrey,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Settings',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(15),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Preference',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Icons.notifications_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              'Notification',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Icon(
                            Icons.language,
                            size: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              'Lanugauge',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        children: [
                          const Icon(
                            Icons.currency_rupee,
                            size: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              'Currency',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(15),
                height: 210,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Other',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Icons.wallet_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              'Payment Method',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.policy_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.question_mark_rounded,
                            size: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              'Terms of Use',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.logout_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
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
