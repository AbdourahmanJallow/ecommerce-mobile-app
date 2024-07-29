import 'package:flutter/material.dart';
import 'package:jendal/components/custom_bottom_nav.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: const Center(
        child: Text(
          'Favorites Page',
          style: TextStyle(fontSize: 25),
        ),
      )),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
