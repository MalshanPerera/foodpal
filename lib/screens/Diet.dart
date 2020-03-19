import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
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
                                    child: Icon(Icons.search),
                                  )
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
                                    child: Icon(Icons.search),
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
                ])),
      ),
    );
  }
}
