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
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
          vertical: 10,
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
              Icons.person_outlined,
              'User',
              1,
            ),
            
            _buildBottomNavigationBarItem(
              Icons.local_offer_outlined,
              'Offers',
              2,
            ),
            _buildBottomNavigationBarItem(
              Icons.notifications,
              'Wechat',
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
          size: 25,
          color: _selectedIndex == index
              ? Colors.orange
              : Colors.black, // Change color when selected
        ),
      ),
    );
  }
}
