import 'package:flutter/material.dart';
import 'package:stylish_shop/Components/cattegorybutton.dart';
import 'package:stylish_shop/categorypages/adidas.dart';
import 'package:stylish_shop/categorypages/fila.dart';
import 'package:stylish_shop/categorypages/nike.dart';
import 'package:stylish_shop/categorypages/puma.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // List of available brands
  List<String> brands = ["Adidas", "Nike", "Fila", "Puma"];
  
  // Default selected brand
  String selectedBrand = "Adidas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),
      body: SingleChildScrollView(
        //All Paddings is Here !!!!!!!!!
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // User greeting section
              const Text(
                'Ali Nabavi',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Welcome to your shop',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff8F959E)),
              ),
              const SizedBox(height: 15),

              // Search bar and microphone button
              Row(
                children: [
                  // Search input field
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Search...",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 26,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  // Microphone icon button
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff9775FA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {
                        // TODO: Add microphone functionality
                      },
                      icon: const Icon(
                        Icons.mic_none,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),

              // Brand selection title
              const Text(
                'Choose brand',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
              const SizedBox(height: 10),

              // Brand selection buttons
              Cattegorybutton(
                icons: const [
                  Icon(Icons.sports_soccer, color: Colors.black),
                  Icon(Icons.sports_basketball, color: Colors.black),
                  Icon(Icons.sports_tennis, color: Colors.black),
                  Icon(Icons.sports_volleyball, color: Colors.black),
                ],
                brands: brands,
                onSelected: (brand) {
                  // Update the selected brand when user taps a button
                  setState(() {
                    selectedBrand = brand;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Display the selected brand's products
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: _getProductsForBrand(selectedBrand),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Return the corresponding widget based on the selected brand
  Widget _getProductsForBrand(String brand) {
    switch (brand) {
      case "Adidas":
        return const Adidas();
      case "Nike":
        return const Nike();
      case "Fila":
        return const Fila();
      case "Puma":
        return const Puma();
      default:
        return const SizedBox();
    }
  }
}
