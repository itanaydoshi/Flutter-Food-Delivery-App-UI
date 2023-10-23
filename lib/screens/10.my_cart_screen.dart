import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/custom_appbar.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 244, 246, 1),
      appBar: const CustomAppBar(
        title: 'My Cart',
        icon: Icons.arrow_back,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Selected Items',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              _buildCartItem('assets/images/img5.jpg',
                  'Grocery from Italian Delight', 100),
              _buildCartItem('assets/images/img5.jpg',
                  'Grocery from Italian Delight', 100),
              _buildCartItem('assets/images/img5.jpg',
                  'Grocery from Italian Delight', 100),
              const SizedBox(height: 30),
              _buildPriceDetails('270', '50', '320'),
              const SizedBox(height: 40),
              _buildElevatedButton(
                'Place Order',
                () {},
                const Color.fromARGB(255, 255, 102, 0),
                Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCartItem(String imagePath, String title, double price) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        '\$ 100',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceDetails(
      String subTotal, String deliveryCharges, String total) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 130,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          _buildPriceRow('Sub Total', '\$$subTotal'),
          const Divider(),
          _buildPriceRow('Delivery Charges', '\$$deliveryCharges'),
          const Divider(),
          _buildPriceRow('Total', '\$$total'),
        ],
      ),
    );
  }

  Widget _buildPriceRow(String title, String price) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          price,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget _buildElevatedButton(
    String text,
    Function() onPressed,
    Color buttonColor,
    Color textColor,
  ) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16, color: textColor),
          ),
        ],
      ),
    );
  }
}
