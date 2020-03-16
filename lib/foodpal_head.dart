import 'package:flutter/material.dart';
import 'package:foodpal/screens/home_screen.dart';
import 'package:foodpal/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodPal',
      theme: ThemeData(
          primaryColor: Color(0xFF6EA809),
          highlightColor: Color(0xFF69708A),
          backgroundColor: Color(0xFFF5F5F7),
          hintColor: Color(0xFFE7EAF0),
          fontFamily: "NeusaNextStd",
          textTheme: TextTheme(
            title: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 38.0),
            body1: TextStyle(color: Colors.white, fontSize: 18.0),
            body2: TextStyle(
                color: Color(0xFF69708A),
                fontWeight: FontWeight.w500,
                fontSize: 12.0),
          ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home_screen':(context) => HomeScreen(),
      },
    );
  }
}
