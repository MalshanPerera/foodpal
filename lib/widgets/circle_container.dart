import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {

  final Color color;

  CircleIcon({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5.0),
      width: 5,
      height: 5,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? Theme.of(context).highlightColor
      ),
    );
  }
}
