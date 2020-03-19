import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    Key key,
    @required this.inputFieldName,
    @required this.icon,
    this.controller,
    this.isPassword = false,
  }) : super(key: key);

  final String inputFieldName;
  final IconData icon;
  final bool isPassword;
  TextEditingController controller;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: TextField(
        obscureText: widget.isPassword,
        controller: widget.controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15.0),
            prefixIcon: Icon(widget.icon),
            hintText: widget.inputFieldName,
            hintStyle: Theme.of(context)
                .textTheme
                .body2
                .copyWith(fontSize: Utils.bodyWidth * 0.035)),
      ),
    );
  }
}
