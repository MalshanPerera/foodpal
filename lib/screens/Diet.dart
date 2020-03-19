import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodpal/helper/utils.dart';

class DietScreen extends StatefulWidget {
  @override
  _DietScreenState createState() => _DietScreenState();
}

class _DietScreenState extends State<DietScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = Utils.bodyWidth;
    final _height = Utils.totalBodyHeight;

    bool _isMale = false;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/diet_background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(26.5),
                        left: Utils.getDesignWidth(26)),
                    child: AutoSizeText(
                      "Awesome! We're almost done!",
                      style: Theme.of(context).textTheme.body2,
                      minFontSize: 15,
                      maxFontSize: 20,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(26.5),
                        left: Utils.getDesignWidth(26),
                        right: Utils.getDesignWidth(26)),
                    child: AutoSizeText(
                      "To get a better Healthy Diet we'll need some details about yourself ",
                      style: Theme.of(context).textTheme.body2,
                      minFontSize: 15,
                      maxFontSize: 20,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(26.5),
                        left: Utils.getDesignWidth(26),
                        right: Utils.getDesignWidth(26)),
                    child: AutoSizeText(
                      "What is your gender?   ",
                      style: Theme.of(context).textTheme.body2,
                      minFontSize: 15,
                      maxFontSize: 20,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(14),
                        left: Utils.getDesignWidth(26),
                        right: Utils.getDesignWidth(26)),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              width: Utils.getDesignWidth(161),
                              height: Utils.getDesignHeight(37),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: _isMale
                                      ? Colors.white
                                      : Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5.0),
                                      bottomLeft: Radius.circular(5.0))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  AutoSizeText(
                                    "Male",
                                    minFontSize: 15,
                                    style: Theme.of(context)
                                        .textTheme
                                        .body2
                                        .copyWith(
                                            color: _isMale
                                                ? Theme.of(context)
                                                    .highlightColor
                                                : Colors.white),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: Utils.getDesignWidth(5)),
                                    child: Image.asset('assets/images/male.png'),                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _isMale = false;
                              });
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: Utils.getDesignWidth(161),
                              height: Utils.getDesignHeight(37),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: _isMale
                                      ? Theme.of(context).accentColor
                                      : Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5.0),
                                      bottomRight: Radius.circular(5.0))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  AutoSizeText(
                                    "Female",
                                    minFontSize: 15,
                                    style: Theme.of(context)
                                        .textTheme
                                        .body2
                                        .copyWith(
                                            color: _isMale
                                                ? Colors.white
                                                : Theme.of(context)
                                                    .highlightColor),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: Utils.getDesignWidth(5)),
                                    child: Image.asset('assets/images/woman.png'),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _isMale = true;
                              });
                            },
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(11),
                        left: Utils.getDesignWidth(26),
                        right: Utils.getDesignWidth(26)),
                    child: AutoSizeText(
                      "What is your height ?",
                      minFontSize: 15,
                      maxFontSize: 20,
                      style: Theme.of(context).textTheme.body2,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            top: Utils.getDesignHeight(14),
                            left: Utils.getDesignWidth(26),
                            right: Utils.getDesignWidth(26)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).hintColor,
                                blurRadius: 10.0,
                                spreadRadius: 12.0,
                                offset: Offset(
                                  0.0, // horizontal, move right 10
                                  5.0, // vertical, move down 10
                                ),
                              )
                            ]),
                        width: Utils.getDesignWidth(64),
                        height: Utils.getDesignHeight(39),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Value",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: Utils.getDesignHeight(14),
                            left: Utils.getDesignWidth(26),
                            right: Utils.getDesignWidth(26)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).hintColor,
                                blurRadius: 10.0,
                                spreadRadius: 12.0,
                                offset: Offset(
                                  0.0, // horizontal, move right 10
                                  5.0, // vertical, move down 10
                                ),
                              )
                            ]),
                        width: Utils.getDesignWidth(64),
                        height: Utils.getDesignHeight(39),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Unit",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none),
                          keyboardType: TextInputType.number,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(11),
                        left: Utils.getDesignWidth(26),
                        right: Utils.getDesignWidth(26)),
                    child: AutoSizeText(
                      "What is your weight ?",
                      minFontSize: 15,
                      maxFontSize: 20,
                      style: Theme.of(context).textTheme.body2,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            top: Utils.getDesignHeight(14),
                            left: Utils.getDesignWidth(26),
                            right: Utils.getDesignWidth(26)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).hintColor,
                                blurRadius: 10.0,
                                spreadRadius: 12.0,
                                offset: Offset(
                                  0.0, // horizontal, move right 10
                                  5.0, // vertical, move down 10
                                ),
                              )
                            ]),
                        width: Utils.getDesignWidth(64),
                        height: Utils.getDesignHeight(39),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Value",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: Utils.getDesignHeight(14),
                            left: Utils.getDesignWidth(26),
                            right: Utils.getDesignWidth(26)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).hintColor,
                                blurRadius: 10.0,
                                spreadRadius: 12.0,
                                offset: Offset(
                                  0.0, // horizontal, move right 10
                                  5.0, // vertical, move down 10
                                ),
                              )
                            ]),
                        width: Utils.getDesignWidth(64),
                        height: Utils.getDesignHeight(39),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Unit",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none),
                          keyboardType: TextInputType.number,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(11),
                        left: Utils.getDesignWidth(26),
                        right: Utils.getDesignWidth(26)),
                    child: AutoSizeText(
                      "How old are you ?",
                      minFontSize: 15,
                      maxFontSize: 20,
                      style: Theme.of(context).textTheme.body2,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            top: Utils.getDesignHeight(14),
                            left: Utils.getDesignWidth(26),
                            right: Utils.getDesignWidth(26)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).hintColor,
                                blurRadius: 10.0,
                                spreadRadius: 12.0,
                                offset: Offset(
                                  0.0, // horizontal, move right 10
                                  5.0, // vertical, move down 10
                                ),
                              )
                            ]),
                        width: Utils.getDesignWidth(64),
                        height: Utils.getDesignHeight(39),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Value",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: Utils.getDesignHeight(14),
                            left: Utils.getDesignWidth(26),
                            right: Utils.getDesignWidth(26)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).hintColor,
                                blurRadius: 10.0,
                                spreadRadius: 12.0,
                                offset: Offset(
                                  0.0, // horizontal, move right 10
                                  5.0, // vertical, move down 10
                                ),
                              )
                            ]),
                        width: Utils.getDesignWidth(64),
                        height: Utils.getDesignHeight(39),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Unit",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none),
                          keyboardType: TextInputType.number,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: Utils.getDesignWidth(323),
                    margin: EdgeInsets.only(
                        top: Utils.getDesignHeight(130),
                        left: Utils.getDesignWidth(26),
                        right: Utils.getDesignWidth(26)),
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                      child: Text(
                        'Start Cooking',
                        style: Theme.of(context).textTheme.body1,
                      ),
                    ),
                  )
                ])),
      ),
    );
  }
}
