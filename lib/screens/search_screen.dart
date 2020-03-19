import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/presentation/custom_icons_icons.dart';
import 'package:foodpal/widgets/customTextField.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _width = Utils.bodyWidth;
  final _height = Utils.totalBodyHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: Utils.getDesignHeight(35)),
              child:
                  CustomTextField(icon: Icons.search, inputFieldName: "Search"))
        ],
      ),
    ));
  }
}
