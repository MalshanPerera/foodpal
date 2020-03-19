import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/presentation/custom_icons_icons.dart';
import 'package:foodpal/widgets/customTextField.dart';

class ForgotPasswordEmailScreen extends StatefulWidget {
  @override
  _ForgotPasswordEmailScreenState createState() => _ForgotPasswordEmailScreenState();
}

class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen> {
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
                child: Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: Utils.getDesignHeight(82)),
                    height: Utils.getDesignHeight(115),
                    child: Image.asset('assets/images/logo.png', fit: BoxFit.fitHeight,),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: Utils.getDesignHeight(30)),
                    child: SizedBox(
                        width: Utils.getDesignWidth(210),
                        height: Utils.getDesignHeight(30),
                        child: AutoSizeText("FORGET PASSWORD",
                            textAlign: TextAlign.center,
                            maxFontSize: 30,
                            minFontSize: 16,
                            style: Theme.of(context).textTheme.title)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: Utils.getDesignHeight(14)),
                    child: SizedBox(
                        width: Utils.getDesignWidth(316),
                        height: Utils.getDesignHeight(57),
                        child: AutoSizeText(
                            "Please enter the email address you used to sign up ",
                            textAlign: TextAlign.center,
                            maxFontSize: 26,
                            minFontSize: 14,
                            style: Theme.of(context).textTheme.body1)),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: Utils.getDesignHeight(24),
                          left: Utils.getDesignWidth(30),
                          right: Utils.getDesignWidth(30)),
                      child: CustomTextField(
                        inputFieldName: "Email address",
                        icon: CustomIcons.mail_icon,
                      )),
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
                          "Proceed",
                          style: Theme.of(context)
                              .textTheme
                              .body1
                              .copyWith(fontSize: _width * 0.038),
                        ),
                        onPressed: (() {
                          Navigator.of(context)
                              .pushNamed('/forgot_password_otp_screen');
                        })),
                  )
                ]))));
  }
}
