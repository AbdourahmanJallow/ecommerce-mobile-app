import 'package:flutter/material.dart';
import 'package:jendal/core/components/custom_bottom_nav.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: const Center(
        child: Text(
          'Settings Page',
          style: TextStyle(fontSize: 25),
        ),
      )),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
