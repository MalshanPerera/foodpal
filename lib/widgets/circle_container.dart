import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {

  final Color color;
  final double size;

  CircleIcon({this.color, this.size = 5});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5.0),
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? Theme.of(context).highlightColor
      ),
    );
  }
}
