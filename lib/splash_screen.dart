import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // غير المسار لو مختلف

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();


    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) =>  HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox.expand(   // بياخد الشاشة كلها
        child: Image.asset(
          "assets/images/splash.png",
          fit: BoxFit.cover,   // تملى الشاشة بالكامل
        ),
      ),
    );
  }
}
