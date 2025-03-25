import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_shop/Components/productsbox.dart';
import 'package:stylish_shop/models/informationAll.dart';
import 'package:stylish_shop/models/shop.dart';

class Adidas extends StatefulWidget {
  const Adidas({super.key});

  @override
  State<Adidas> createState() => _AdidasState();
}

class _AdidasState extends State<Adidas> {
  void navigateToProductsDetails(int index) {
    final shop = context.read<Shop>();
    final productsMenu = shop.productsMenu;

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Information(
                  products: productsMenu[index],
                )));
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final productsMenu = shop.productsMenu;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header section with 'New Arrival' and 'View All'
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'New Arrival',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            // 'View All' navigation button
            Container(
              margin: const EdgeInsets.only(right: 15),
              child: const Text(
                'View All',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8F959E)),
              ),
            ),
          ],
        ),

        // Product Grid
        Expanded(
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: productsMenu.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.68,
            ),
            itemBuilder: (context, index) => Productsbox(
                products: productsMenu[index],
                onTap: () => navigateToProductsDetails(index)),
          ),
        ),
      ],
    );
  }

  // Custom route with fade transition animation
  Route createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Fade transition animation
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
