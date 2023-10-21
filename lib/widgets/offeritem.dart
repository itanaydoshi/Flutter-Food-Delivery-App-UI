import 'package:flutter/material.dart';

class OfferItem extends StatelessWidget {
  final String title;
  final String expirationDate;

  const OfferItem({super.key, required this.title, required this.expirationDate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0), // Add spacing here
      child: Container(
        height: 50,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Offer expires in $expirationDate',
                    style: const TextStyle(fontSize: 8),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
