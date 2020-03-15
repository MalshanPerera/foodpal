import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    Utils.setScreenSizes(context);
    return Scaffold(
      body: Center(
        child: Text("FOODPAL", style: Theme.of(context).textTheme.title.copyWith(color: Theme.of(context).primaryColor),),
      ),
    );
  }

  startTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/home_screen');
  }
}
