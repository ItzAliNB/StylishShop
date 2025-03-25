import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:stylish_shop/pages/card.dart';
import 'package:stylish_shop/pages/favorite.dart';
import 'package:stylish_shop/pages/homepage.dart';
import 'package:stylish_shop/pages/order.dart';

// Home screen with bottom navigation bar
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> {
  // Keeps track of the selected tab index
  int selectedIndex = 0;

  // List of pages for navigation
  final List<Widget> pages = [
    Homepage(),
    Favorite(),
    Order(),
    Cardpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom navigation bar using GNav package
      bottomNavigationBar: GNav(
        gap: 8, // Gap between icon and text
        color: const Color(0xff8F959E), // Inactive icon color
        activeColor: const Color(0xff9775FA), // Active icon color
        selectedIndex: selectedIndex, // Current selected index
        backgroundColor:
            const Color(0xffFEFEFE), // Background color of the nav bar
        onTabChange: (index) {
          // Update the selected index when tab is changed
          setState(() {
            selectedIndex = index;
          });
        },
        tabs: const [
          GButton(icon: Icons.home_outlined, text: 'Home'),
          GButton(icon: Icons.favorite_outline, text: 'Favorite'),
          GButton(icon: Icons.shopping_bag_outlined, text: 'Order'),
          GButton(icon: Icons.credit_card_outlined, text: 'Card'),
        ],
      ),

      backgroundColor: const Color(0xffFEFEFE),

      // App bar at the top of the screen
      appBar: AppBar(
        backgroundColor: const Color(0xffFEFEFE),
        actions: [
          // Shopping bag icon button on the right side
          Container(
            margin: const EdgeInsets.only(right: 15, top: 5),
            child: CircleAvatar(
              backgroundColor: const Color(0xffF5F6FA),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Order()),
                  );
                },
                icon: const Icon(Icons.shopping_bag_outlined),
                iconSize: 25,
                color: const Color(0xff1D1E20),
              ),
            ),
          )
        ],
        // Menu icon button on the left side
        leading: Container(
          margin: const EdgeInsets.only(left: 15, top: 5),
          child: CircleAvatar(
            backgroundColor: const Color(0xffF5F6FA),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              iconSize: 25,
              color: const Color(0xff1D1E20),
            ),
          ),
        ),
      ),

      // Display the selected page using IndexedStack for better performance
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
    );
  }
}
