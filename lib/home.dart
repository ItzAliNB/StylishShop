import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:stylish_shop/pages/card.dart';
import 'package:stylish_shop/pages/favorite.dart';
import 'package:stylish_shop/pages/homepage.dart';
import 'package:stylish_shop/pages/order.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    Homepage(),
    Favorite(),
    Order(),
    Cardpage(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        gap: 8,
        color: const Color(0xff8F959E),
        activeColor: const Color(0xff9775FA),
        selectedIndex: selectedIndex,
        onTabChange: (index) {
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
      appBar: AppBar(
        backgroundColor: const Color(0xffFEFEFE),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15, top: 15),
            child: CircleAvatar(
              backgroundColor: const Color(0xffF5F6FA),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined),
                iconSize: 25,
                color: const Color(0xff1D1E20),
              ),
            ),
          )
        ],
        leading: Container(
          margin: const EdgeInsets.only(left: 15, top: 15),
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
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
    );
  }
}
