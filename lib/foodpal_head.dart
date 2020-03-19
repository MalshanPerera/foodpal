import 'package:flutter/material.dart';
import 'package:foodpal/screens/Diet.dart';
import 'package:foodpal/screens/Food_Details_Screen.dart';
import 'package:foodpal/screens/favourites_screen.dart';
import 'package:foodpal/screens/forgot_password/forgot_password_email_screen.dart';
import 'package:foodpal/screens/forgot_password/forgot_password_otp_screen.dart';
import 'package:foodpal/screens/forgot_password/forgot_password_screen.dart';
import 'package:foodpal/screens/home_screen.dart';
import 'package:foodpal/screens/inventory_screen.dart';
import 'package:foodpal/screens/landing_screeen.dart';
import 'package:foodpal/screens/login_screen.dart';
import 'package:foodpal/screens/main_screen.dart';
import 'package:foodpal/screens/search_screen.dart';
import 'package:foodpal/screens/sign_up/sign_up_otp_screen.dart';
import 'package:foodpal/screens/sign_up/sign_up_screen.dart';
import 'package:foodpal/screens/splash_screen.dart';
import 'package:foodpal/route_constants.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodPal',
      theme: ThemeData(
        accentColor: Color(0xFF6EA809),
        primaryColor: Color(0xFF6EA809),
        highlightColor: Color(0xFF69708A),
        backgroundColor: Color(0xFFF5F5F7),
        hintColor: Color(0xFFE7EAF0),
        fontFamily: "NeusaNextStd",
        textTheme: TextTheme(
          title: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: 38.0),
          body1: TextStyle(color: Colors.white, fontSize: 18.0),
          body2: TextStyle(
              color: Color(0xFF69708A),
              fontWeight: FontWeight.w500,
              fontSize: 12.0),
          button: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 18.0),
        ),
      ),
      initialRoute: '/',
      routes: {
        SplashScreenRoute: (context) => SplashScreen(),
        HomeScreenRoute: (context) => HomeScreen(),
        LandingScreenRoute: (context) => LandingScreen(),
        LoginScreenRoute: (context) => LoginScreen(),
        SignUpScreenRoute: (context) => SignUpScreen(),
        SignUpOTPScreenRoute: (context) => SignUpOtpScreen(),
        ForgotPasswordEmailScreenRoute: (context) => ForgotPasswordEmailScreen(),
        ForgotPasswordOTPScreenRoute: (context) => ForgotPasswordOTPScreen(),
        ForgotPasswordScreenRoute: (context) => ForgotPasswordScreen(),
        FavouritesScreenRoute: (context) => FavoiuritesScreen(),
        InventoryScreenRoute: (context) => InventoryScreen(),
        FoodDetailsScreenRoute: (context) => FoodDetailsScreen(),
        MainScreenRoute: (context) => MainScreen(),
        SearchScreenRoute: (context) => SearchScreen(),
        DietScreenRoute: (context) => DietScreen(),
      },
    );
  }
}
