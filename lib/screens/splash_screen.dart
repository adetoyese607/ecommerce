import 'dart:async';

import 'package:ecommerce/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            opacity: 0.3,
            image: AssetImage('assets/splash_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 250,
              color: const Color.fromARGB(255, 182, 13, 13),
            ),
            Text(
              'ADE SHOP',
              style: TextStyle(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
