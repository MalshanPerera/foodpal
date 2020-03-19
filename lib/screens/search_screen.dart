import 'package:auto_size_text/auto_size_text.dart';
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
    final String searchQuery = ModalRoute.of(context).settings.arguments;
    print(searchQuery);
    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Theme.of(context).hintColor,
                blurRadius: 15.0,
                spreadRadius: 5,
                offset: Offset(
                  0.0, // horizontal, move right 10
                  1.0, // vertical, move down 10
                ),
              )
            ]),
            margin: EdgeInsets.only(
                top: Utils.getDesignHeight(35),
                bottom: Utils.getDesignHeight(29),
                left: Utils.getDesignWidth(26),
                right: Utils.getDesignWidth(26)),
            child:
                CustomTextField(icon: Icons.search, inputFieldName: "Search")),
        Container(
          child: AutoSizeText(
            "Showing All Results for $searchQuery",
            style: Theme.of(context).textTheme.body2,
            minFontSize: 18,
            maxFontSize: 25,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                  left: Utils.getDesignHeight(26),
                  right: Utils.getDesignHeight(26),
                  top: Utils.getDesignHeight(15),
                  bottom: Utils.getDesignHeight(15)),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      searchTile(),
                      searchTile(),
                    ],
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      searchTile(),
                      searchTile(),
                    ],
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      searchTile(),
                      searchTile(),
                    ],
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      searchTile(),
                      searchTile(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }

  Widget searchTile() {
    return Container(
      margin: EdgeInsets.only(top: Utils.getDesignHeight(20)),
      height: Utils.getDesignHeight(210),
      width: Utils.getDesignWidth(154),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).hintColor,
            blurRadius: 1.0,
            spreadRadius: 1.0,
            offset: Offset(
              0.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                width: Utils.getDesignWidth(154),
                height: Utils.getDesignHeight(130),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    child: Image.asset(
                      'assets/images/searchImg1.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                top: Utils.getDesignHeight(103),
                left: Utils.getDesignWidth(5),
                child: AutoSizeText(
                  'Smoked Chicken',
                  maxFontSize: 16,
                ),
              ),
              Positioned(
                top: Utils.getDesignHeight(175),
                left: Utils.getDesignWidth(130),
                child: Container(
                  margin: EdgeInsets.only(
                    right: Utils.getDesignWidth(5),
                  ),
                  child: Image.asset(
                    'assets/images/like.png',
                    fit: BoxFit.fitWidth,
                    width: Utils.getDesignWidth(18),
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: Utils.getDesignHeight(5)),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: Utils.getDesignWidth(5)),
                  child: AutoSizeText(
                    "Protien",
                    style: Theme.of(context).textTheme.body2,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).highlightColor,
                      shape: BoxShape.circle),
                  margin: EdgeInsets.only(
                      left: Utils.getDesignWidth(5),
                      right: Utils.getDesignWidth(5)),
                  width: Utils.getDesignWidth(10),
                  height: Utils.getDesignHeight(10),
                ),
                Container(
                  child: AutoSizeText(
                    "Lunch",
                    style: Theme.of(context).textTheme.body2,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).highlightColor,
                      shape: BoxShape.circle),
                  margin: EdgeInsets.only(
                      left: Utils.getDesignWidth(5),
                      right: Utils.getDesignWidth(5)),
                  width: Utils.getDesignWidth(10),
                  height: Utils.getDesignHeight(10),
                ),
                Container(
                  child: AutoSizeText(
                    "Low Fat",
                    style: Theme.of(context).textTheme.body2,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    left: Utils.getDesignWidth(5),
                    top: Utils.getDesignHeight(5)),
                child: AutoSizeText(
                  "1235 Kcal (500g)",
                  style: Theme.of(context).textTheme.body2,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: Utils.getDesignHeight(5),
                  left: Utils.getDesignWidth(5),
                ),
                child: AutoSizeText(
                  "45 mins - 1 hour",
                  style: Theme.of(context)
                      .textTheme
                      .body2
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
