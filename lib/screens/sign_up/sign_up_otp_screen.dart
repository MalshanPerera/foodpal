import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/presentation/custom_icons_icons.dart';
import 'package:foodpal/route_constants.dart';
import 'package:foodpal/widgets/customTextField.dart';

class SignUpOtpScreen extends StatefulWidget {
  @override
  _SignUpOtpScreenState createState() => _SignUpOtpScreenState();
}

class _SignUpOtpScreenState extends State<SignUpOtpScreen> {
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
                    margin: EdgeInsets.only(top: Utils.getDesignHeight(228)),
                    child: SizedBox(
                      width: Utils.getDesignWidth(88),
                      height: Utils.getDesignHeight(30),
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text("SIGN UP",
                              style: Theme.of(context).textTheme.body1)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: Utils.getDesignHeight(14)),
                    child: SizedBox(
                      width: Utils.getDesignWidth(248),
                      height: Utils.getDesignHeight(21),
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text("Please enter the received OTP code",
                              style: Theme.of(context).textTheme.body1)),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: Utils.getDesignHeight(32),
                          left: Utils.getDesignWidth(30),
                          right: Utils.getDesignWidth(30)),
                      child: CustomTextField(
                        inputFieldName: "OTP",
                        icon: CustomIcons.otp_icon,
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
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              CuisinesScreenRoute, (_) => false);
                        })),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(16),
                        right: Utils.getDesignWidth(30)),
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: GestureDetector(
                          onTap: () {
                            print("resend otp");
                          },
                          child: Text("Resend OTP",
                              style: Theme.of(context)
                                  .textTheme
                                  .body1
                                  .copyWith(fontSize: _width * 0.035)),
                        )),
                  )
                ]))));
  }
}
