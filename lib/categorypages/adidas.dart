import 'package:flutter/material.dart';
import 'package:stylish_shop/Components/productsbox.dart';
import 'package:stylish_shop/informationpages/informationAll.dart';

class Adidas extends StatelessWidget {
  const Adidas({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'title': 'Nike Sportswear Club Fleece',
        'price': '99 dollar',
        'image': 'assets/productimages/Rectangle 568.png',
      },
      {
        'title': 'Trail Running Jacket Nike Windrunner',
        'price': '88 dollar',
        'image': 'assets/productimages/Rectangle 569.png',
      },
      {
        'title': 'Nike Sportswear Club Fleece',
        'price': '99 dollar',
        'image': 'assets/productimages/pngfind 1.png',
      },
      {
        'title': 'Trail Running Jacket Nike Windrunner',
        'price': '88 dollar',
        'image': 'assets/productimages/pngegg 1.png',
      },
    ];

    final List<String> productImages = [
      'assets/productbox/image 5.png',
      'assets/productimages/Rectangle 569.png',
      'assets/productimages/pngfind 1.png',
      'assets/productimages/pngegg 1.png',
    ];

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
                Navigator.of(context).push(_createRoute(AllProductsPage(
                    products: products, productImages: productImages)));
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
        const SizedBox(height: 10),
        Expanded(
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
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(_createRoute(
                    Information(
                        imagePath: productImages[index]),
                  ));
                },
                child: Productsbox(
                  title: products[index]['title']!,
                  price: products[index]['price']!,
                  image: Image.asset(productImages[index]),
                  onpressed: () {
                    Navigator.of(context).push(_createRoute(
                      Information(
                          imagePath: productImages[index]),
                    ));
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class AllProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final List<String> productImages;

  const AllProductsPage(
      {super.key, required this.products, required this.productImages});

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
              title: products[index]['title']!,
              price: products[index]['price']!,
              image: Image.asset(productImages[index]),
              onpressed: () {
                Navigator.of(context).push(_createRoute(
                  Information(
                      imagePath: productImages[index]),
                ));
              },
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
