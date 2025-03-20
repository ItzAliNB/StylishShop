import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_shop/Components/sizebox.dart';
import 'package:stylish_shop/home.dart';
import 'package:stylish_shop/imagesClasses/products.dart';
import 'package:stylish_shop/models/shop.dart';

class Information extends StatefulWidget {
  final Products products;

  const Information({super.key, required this.products});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  void addToCart() {
    final shop = context.read<Shop>();

    shop.addToCart(widget.products);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Transparent AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: Stack(
          children: [
            // Background product image
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                widget.products.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            // Draggable bottom sheet content
            _productDetailSheet(),
          ],
        ),
      ),
    );
  }

  // Widget for the draggable bottom sheet
  Widget _productDetailSheet() {
    return DraggableScrollableSheet(
      initialChildSize: 0.55,
      maxChildSize: 1,
      minChildSize: 0.55,
      builder: (context, scrollController) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Color(0xffFEFEFE),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ListView(
            controller: scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              // Top indicator bar
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 25),
                child: Center(
                  child: Container(
                    height: 5,
                    width: 35,
                    color: Colors.black12,
                  ),
                ),
              ),

              // Product category and price label
              Row(
                children: [
                  Text(
                    widget.products.title,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff8F959E),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff8F959E),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),

              // Product title and price
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    widget.products.name,
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff1D1E20),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    widget.products.price,
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff1D1E20),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              // Product images thumbnails
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(widget.products.imagePath1), //we use widget because its stateful widget!
                    Image.asset(widget.products.imagePath2),
                    Image.asset(widget.products.imagePath3),
                    Image.asset(widget.products.imagePath4),
                  ],
                ),
              ),

              // Size selector title and guide
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  children: const [
                    Text(
                      'Size',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff1D1E20),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Size Guide',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff8F959E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              // Size options
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Sizebox(size: 'S'),
                    Sizebox(size: 'M'),
                    Sizebox(size: 'L'),
                    Sizebox(size: 'XL'),
                    Sizebox(size: '2XL'),
                  ],
                ),
              ),

              // Product description
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff1D1E20),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.products.description,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff8F959E),
                  fontWeight: FontWeight.w400,
                ),
              ),

              // Add to Cart button
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Navigate to Home screen when Add to Cart is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: GestureDetector(
                  onTap: addToCart,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff9775FA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Add To Cart',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30), // Extra spacing at bottom
            ],
          ),
        );
      },
    );
  }
}
