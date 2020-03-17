import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/presentation/custom_icons_icons.dart';
import 'package:foodpal/route_constants.dart';
import 'package:foodpal/widgets/CustomTextField.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = Utils.bodyWidth;
    final _height = Utils.totalBodyHeight;

    TextEditingController _usernameController = new TextEditingController();
    TextEditingController _passController = new TextEditingController();

    validate() {
      if (_usernameController.text.length != 0 &&
          _passController.text.length != 0) {
        print("login");
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: _width,
              height: _height,
              child: Image.asset(
                'assets/images/login_background.png',
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment(0, -1),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: Utils.getDesignHeight(211)),
                    child: SizedBox(
                      width: Utils.getDesignWidth(263),
                      height: Utils.getDesignHeight(53),
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text("Welcome Back!",
                              style: Theme.of(context).textTheme.body1)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: Utils.getDesignHeight(0)),
                    child: SizedBox(
                      width: Utils.getDesignWidth(179),
                      height: Utils.getDesignHeight(27),
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text("Sign in To Continue",
                              style: Theme.of(context).textTheme.body1)),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: Utils.getDesignHeight(26),
                          left: Utils.getDesignWidth(23),
                          right: Utils.getDesignWidth(23)),
                      child: CustomTextField(
                        controller: _usernameController,
                        inputFieldName: "Name",
                        icon: CustomIcons.avatar,
                      )),
                  Container(
                      margin: EdgeInsets.only(
                          top: Utils.getDesignHeight(26),
                          left: Utils.getDesignWidth(23),
                          right: Utils.getDesignWidth(23)),
                      child: CustomTextField(
                        controller: _passController,
                        inputFieldName: "Password",
                        isPassword: true,
                        icon: CustomIcons.lock,
                      )),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(10),
                        right: Utils.getDesignWidth(26)),
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(ForgotPasswordEmailScreenRoute);
                          },
                          child: Text("Forgot Password",
                              style: Theme.of(context)
                                  .textTheme
                                  .body1
                                  .copyWith(fontSize: _width * 0.035)),
                        )),
                  ),
                  Container(
                    width: _width,
                    height: Utils.getDesignHeight(48),
                    margin: EdgeInsets.only(
                      top: Utils.getDesignHeight(18),
                      left: Utils.getDesignWidth(26),
                      right: Utils.getDesignWidth(26),
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(6)),
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          "Login",
                          style: Theme.of(context)
                              .textTheme
                              .body1
                              .copyWith(fontSize: _width * 0.038),
                        ),
                        onPressed: (() {
                          validate();
                        })),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: Utils.getDesignHeight(48)),
                    child: Text.rich(
                      TextSpan(
                        text: 'First Time Here ? ',
                        style: Theme.of(context).textTheme.body1,
                        children: <TextSpan>[
                          TextSpan(
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context)
                                      .pushNamed(SignUpScreenRoute);
                                },
                              text: 'Sign up',
                              style: Theme.of(context).textTheme.body1.copyWith(
                                  decoration: TextDecoration.underline)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
