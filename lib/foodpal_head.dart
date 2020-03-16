import 'package:flutter/material.dart';
import 'package:foodpal/screens/Food_Details_Screen.dart';
import 'package:foodpal/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FoodDetailsScreen()
      },
    );
  }
}