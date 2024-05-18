import 'package:flutter/material.dart';
import 'package:ptc_test/pages/explore_page.dart';
import 'package:ptc_test/pages/home_page.dart';
import 'package:ptc_test/pages/myCart_page.dart';
import 'package:ptc_test/pages/order_done.dart';
import 'package:ptc_test/pages/products_page.dart';
import 'package:ptc_test/pages/splash_page.dart';

void main() {
  runApp(const MarketApp());
}

class MarketApp extends StatelessWidget {
  const MarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialRoute: '/',
      routes: {
        'home': (context) => const HomePage(),
        'explore': (context) => const ExplorePage(),
        'products': (context) => const ProductsPage(name: ''),
        'cart': (context) => const CartPage(),
        'order': (context) => const OrderDone()
      },
    );
  }
}
