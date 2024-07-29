import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => CustomBottomNavState();
}

class CustomBottomNavState extends State<CustomBottomNav> {
  @override
  Widget build(BuildContext context) {
    int selectedItemIndex = 0;
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.grey,
          activeColor: Colors.deepOrange,
          tabBackgroundColor: Colors.grey.shade800,
          padding: const EdgeInsets.all(16),
          gap: 8,
          iconSize: 28.0,
          selectedIndex: selectedItemIndex,
          onTabChange: (index) {
            selectedItemIndex = index;
          },
          tabs: [
            GButton(
              text: 'Home',
              icon: LineIcons.home,
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            GButton(
                text: 'Favorites',
                icon: LineIcons.heart,
                onPressed: () {
                  Navigator.pushNamed(context, '/favorites');
                }),
            GButton(
                text: 'Cart',
                icon: LineIcons.dashcube,
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                }),
            GButton(
                text: 'Account',
                icon: LineIcons.user,
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                })
          ],
        ),
      ),
    );
  }
}
