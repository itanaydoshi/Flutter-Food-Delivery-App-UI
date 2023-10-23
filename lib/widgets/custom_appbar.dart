import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData icon;

  const CustomAppBar({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(243, 244, 246, 1),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.black,
          size: 20,
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevation: 0,
    );
  }
}
