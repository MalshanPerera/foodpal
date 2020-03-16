import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = Utils.bodyWidth;
    final _height = Utils.totalBodyHeight;

    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/login_background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(children: <Widget>[]))));
  }
}
