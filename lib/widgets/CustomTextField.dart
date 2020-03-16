import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(this.inputFieldName, this.icon);

  final String inputFieldName;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15.0),
            prefixIcon: Icon(icon),
            hintText: inputFieldName,
            hintStyle: Theme.of(context).textTheme.body2
        ),
      ),
    );
  }
}
