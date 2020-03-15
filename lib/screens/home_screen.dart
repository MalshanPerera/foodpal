import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {

    Utils.setScreenSizes(context);

    final _width = Utils.bodyWidth;
    final _height = Utils.totalBodyHeight;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: _width,
            height: _height * 0.27,
            child: Image.asset('assets/images/home_background_image.png', fit: BoxFit.fill,),
          ),
        ],
      ),
    );
  }
}
