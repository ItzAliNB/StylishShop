import 'package:flutter/material.dart';
import 'package:stylish_shop/Components/productsbox.dart';
import 'package:stylish_shop/imagesClasses/products.dart';
import 'package:stylish_shop/informationpages/informationAll.dart';

class Adidas extends StatelessWidget {
  const Adidas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'New Arrival',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(_createRoute(AllProductsPage()));
              },
              child: Container(
                margin: const EdgeInsets.only(right: 15),
                child: const Text(
                  'View All',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8F959E)),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.62,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Productsbox(
                    title: products[index]['title'],
                    price: products[index]['price'],
                    image: Image.asset(products[index]['image']),
                    onpressed: () {
                      Navigator.of(context).push(
                        _createRoute(Information()),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class AllProductsPage extends StatelessWidget {
  const AllProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("All Products"),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 15),
        child: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.65,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Productsbox(
              title: products[index]['title'],
              price: products[index]['price'],
              image: Image.asset(products[index]['image']),
              onpressed: () {},
            );
          },
        ),
      ),
    );
  }
}

Route _createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
