import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/presentation/custom_icons_icons.dart';
import 'package:foodpal/widgets/customTextField.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = Utils.bodyWidth;
    final _height = Utils.totalBodyHeight;
    return Scaffold(
        body: Container(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login_background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: Utils.getDesignHeight(83)),
                  child: SizedBox(
                    width: Utils.getDesignWidth(88),
                    height: Utils.getDesignHeight(30),
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text("Sign Up",
                            style: Theme.of(context).textTheme.title)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: Utils.getDesignHeight(14)),
                  child: SizedBox(
                    width: Utils.getDesignWidth(246),
                    height: Utils.getDesignHeight(21),
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                            "Please fill the details below to create a ",
                            style: Theme.of(context).textTheme.title)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: Utils.getDesignHeight(2)),
                  child: SizedBox(
                    width: Utils.getDesignWidth(90),
                    height: Utils.getDesignHeight(21),
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text("new account",
                            style: Theme.of(context).textTheme.title)),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(32),
                        left: Utils.getDesignWidth(30),
                        right: Utils.getDesignWidth(30)),
                    child: CustomTextField(
                      inputFieldName: "Name",
                      icon: CustomIcons.avatar,
                    )),
                Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(20),
                        left: Utils.getDesignWidth(30),
                        right: Utils.getDesignWidth(30)),
                    child: CustomTextField(
                        inputFieldName: "User Namee",
                        icon: CustomIcons.avatar)),
                Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(20),
                        left: Utils.getDesignWidth(30),
                        right: Utils.getDesignWidth(30)),
                    child: CustomTextField(
                        inputFieldName: "Email Address",
                        icon: CustomIcons.mail_icon)),
                Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(20),
                        left: Utils.getDesignWidth(30),
                        right: Utils.getDesignWidth(30)),
                    child: CustomTextField(
                        inputFieldName: "Mobile number",
                        icon: CustomIcons.mobile_icon)),
                Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(20),
                        left: Utils.getDesignWidth(30),
                        right: Utils.getDesignWidth(30)),
                    child: CustomTextField(
                        inputFieldName: "Password", icon: CustomIcons.lock)),
                Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(20),
                        left: Utils.getDesignWidth(30),
                        right: Utils.getDesignWidth(30)),
                    child: CustomTextField(
                        inputFieldName: "Confirm Password",
                        icon: CustomIcons.lock)),
                Container(
                  height: Utils.getDesignHeight(48),
                  width: _width,
                  margin: EdgeInsets.only(
                      top: Utils.getDesignHeight(30),
                      left: Utils.getDesignWidth(30),
                      right: Utils.getDesignWidth(30)),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(6)),
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "Sign Up",
                        style: Theme.of(context)
                            .textTheme
                            .body1
                            .copyWith(fontSize: _width * 0.038),
                      ),
                      onPressed: (() {})),
                )
              ],
            )));
  }
}
