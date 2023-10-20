import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/categories.dart';
import 'package:food_delivery_app/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 22,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 22,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/img7.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Categories(
                      title: "BreakFast", imagePath: "assets/images/img1.jpg"),
                  Categories(
                      title: "Lunch", imagePath: "assets/images/img2.jpg"),
                  Categories(
                      title: "Dinner", imagePath: "assets/images/img3.jpg"),
                  Categories(
                      title: "Fast Food", imagePath: "assets/images/img4.jpg"),
                  Categories(
                      title: "Beverages", imagePath: "assets/images/img5.jpg"),
                  Categories(
                      title: "Desserts", imagePath: "assets/images/img6.jpg"),
                  Categories(
                      title: "IceCreams", imagePath: "assets/images/img7.jpg"),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Result for Breakfast',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ProductCard(
                          title: "Special Italian Breakfast",
                          imagePath: 'assets/images/img1.jpg',
                          price: '\$100');
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

