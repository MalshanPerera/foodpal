import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {Key key,
      @required this.inputFieldName,
      @required this.icon,
      @required this.controller})
      : super(key: key);

  final String inputFieldName;
  final IconData icon;
  TextEditingController controller;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(6),
      child: TextField(
        controller: widget.controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15.0),
            prefixIcon: Icon(widget.icon),
            hintText: widget.inputFieldName,
            hintStyle: Theme.of(context).textTheme.body2),
      ),
    );
  }
}
