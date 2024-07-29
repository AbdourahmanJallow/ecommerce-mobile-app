import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:jendal/components/categories.dart';
import 'package:jendal/components/custom_bottom_nav.dart';
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
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: badges.Badge(
                  position: badges.BadgePosition.topEnd(top: -15, end: -20),
                  badgeContent: const Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                  ),
                  badgeStyle: const badges.BadgeStyle(
                      badgeColor: Colors.deepOrange,
                      padding: EdgeInsets.all(8)),
                  child: const Icon(
                    Icons.shopping_cart_checkout,
                    size: 30,
                  )),
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            const SizedBox(
              width: 25,
            )
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(color: Color(0xFFE4E7EC)),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Search(),
                    Categories(),
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
        bottomNavigationBar: const CustomBottomNav());
  }
}
