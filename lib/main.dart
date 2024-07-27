import 'package:flutter/material.dart';
import 'package:jendal/screens/cart.dart';
import 'package:jendal/screens/home.dart';
import 'package:jendal/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    const String appTitle = 'JENDAL';
    return MaterialApp(
      title: appTitle,
      // home: const Home(),
      initialRoute: '/home',
      // theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const Home(),
        '/profile': (context) => const Profile(),
        '/cart': (context) => const Cart(),
      },
    );
  }
}
