import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/widgets.dart';
import 'package:jendal/components/categories.dart';
import 'package:jendal/components/products_grid.dart';
import 'package:jendal/components/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('DISCOVER MORE'),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 12,
          letterSpacing: 8,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFE4E7EC)),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Jendal',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const Expanded(child: SizedBox()),
                      IconButton(
                        icon: badges.Badge(
                            position:
                                badges.BadgePosition.topEnd(top: -10, end: -12),
                            badgeContent: const Text('3'),
                            badgeStyle: const badges.BadgeStyle(
                                badgeColor: Colors.deepPurple),
                            child: const Icon(
                              Icons.shopping_cart_checkout,
                              size: 30,
                            )),
                        onPressed: () {},
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Search(),
                  const Categories(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ProductsGrid()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF200253),
        currentIndex: selectedItemIndex,
        iconSize: 28.0,
        onTap: (int index) {
          setState(() {
            selectedItemIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Icon(
                Icons.home,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/cart');
              },
              child: const Icon(
                Icons.shopping_bag,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Icon(
                Icons.person,
              ),
            ),
          )
        ],
      ),
    );
  }
}
