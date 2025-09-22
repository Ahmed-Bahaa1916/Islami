import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/screens/quran_details.dart';
import 'package:islami/splash_screen.dart';
import 'package:islami/them_data.dart';

import 'home_screen.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        QuranDetails.routeName: (context) => QuranDetails(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
