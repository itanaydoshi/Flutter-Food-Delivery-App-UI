import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final Null Function(int) onTabTapped;

  const BottomBar(
      {Key? key,
      required this.onTabTapped,
      required List<Null Function()> onTabTappedList})
      : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.onTabTapped(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10.0,
            spreadRadius: 0.1,
            offset: const Offset(-1, -1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.08,
          vertical: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBottomNavigationBarItem(
              Icons.home_outlined,
              'Home',
              0,
            ),
            _buildBottomNavigationBarItem(
              Icons.local_offer_outlined,
              'Offers',
              1,
            ),
            _buildBottomNavigationBarItem(
              Icons.notifications_none_outlined,
              'Notifications',
              2,
            ),
            _buildBottomNavigationBarItem(
              Icons.person_outlined,
              'Account',
              3,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBarItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          size: 20,
          color: _selectedIndex == index ? const Color.fromARGB(255, 255, 102, 0) : Colors.blueGrey,
        ),
      ),
    );
  }
}
