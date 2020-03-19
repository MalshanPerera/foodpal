import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/route_constants.dart';
import 'package:foodpal/widgets/circle_container.dart';

class CuisinesScreen extends StatefulWidget {
  @override
  _CuisinesScreen createState() => _CuisinesScreen();
}

class _CuisinesScreen extends State<CuisinesScreen> {

  final _height = Utils.totalBodyHeight;
  final _width = Utils.bodyWidth;

  int _currentIndex = 0;
  bool _isAllergies = true;

  bool _isOne = false;
  bool _isTwo = false;
  bool _isThree = false;
  bool _isFour = false;
  bool _isFive = false;
  bool _isSix = false;
  bool _isSeven = false;
  bool _isEight = false;
  bool _isNine = false;
  bool _isTen = false;
  bool _isEleven = false;
  bool _isTwelve = false;
  bool _isThirteen = false;
  bool _isFourteen = false;
  bool _isFifteen = false;
  bool _isSixteen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            foregroundDecoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/user_details_screen_background.png'),
                    fit: BoxFit.fitWidth
                )
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _height * 0.06, left: _width * 0.069, right: _width * 0.069),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text("Let Us Get to Know Each Other More!", style: Theme.of(context).textTheme.body2.copyWith(fontSize: 16.0, fontWeight: FontWeight.w500),),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.01),
                  child: Text("Tell us your Favourite Cuisines", style: Theme.of(context).textTheme.body2.copyWith(fontSize: 16.0, fontWeight: FontWeight.w500),),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.03),
                  height: _height * 0.4,
                  child: PageView(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.01),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: _height * 0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  InkWell(
                                    child: _cuisinesListTile('assets/images/american.jpg', "American", _isOne ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isOne =! _isOne;
                                      });
                                    },),
                                  InkWell(
                                    child: _cuisinesListTile("assets/images/asian.jpg", "Asian", _isTwo ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isTwo =! _isTwo;
                                      });
                                    },),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: _height * 0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  InkWell(child: _cuisinesListTile("assets/images/chinese.jpg", "Chinese", _isThree ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isThree =! _isThree;
                                      });
                                    },),
                                  InkWell(child: _cuisinesListTile("assets/images/english.jpg", "English", _isFour ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isFour =! _isFour;
                                      });
                                    },),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.01),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: _height * 0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  InkWell(child: _cuisinesListTile("assets/images/french.jpg", "French", _isFive ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isFive =! _isFive;
                                      });
                                    },),
                                  InkWell(child: _cuisinesListTile("assets/images/german.jpg", "German", _isSix ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isSix =! _isSix;
                                      });
                                    },),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: _height * 0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  InkWell(child: _cuisinesListTile("assets/images/greek.jpg", "Greek", _isSeven ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isSeven =! _isSeven;
                                      });
                                    },),
                                  InkWell(child: _cuisinesListTile("assets/images/indian.jpg", "Indian", _isEight ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isEight =! _isEight;
                                      });
                                    },),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.01),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: _height * 0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: <Widget>[
                                  InkWell(child: _cuisinesListTile("assets/images/italian.jpg", "Italian", _isNine ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isNine =! _isNine;
                                      });
                                    },),
                                  InkWell(child: _cuisinesListTile("assets/images/japanese.jpg", "Japanese", _isTen ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isTen =! _isTen;
                                      });
                                    },),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: _height * 0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  InkWell(child: _cuisinesListTile("assets/images/mexican.jpg", "Mexican", _isEleven ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isEleven =! _isEleven;
                                      });
                                    },),
                                  InkWell(child: _cuisinesListTile("assets/images/thai.jpg", "Thai", _isTwelve ? Theme.of(context).accentColor : Colors.black.withOpacity(0.3)),
                                    onTap: () {
                                      setState(() {
                                        _isTwelve =! _isTwelve;
                                      });
                                    },),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    onPageChanged: (index){
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleIcon(size: 8, color: _currentIndex == 0 ? Theme.of(context).accentColor : Theme.of(context).highlightColor,),
                      CircleIcon(size: 8, color: _currentIndex == 1 ? Theme.of(context).accentColor : Theme.of(context).highlightColor,),
                      CircleIcon(size: 8, color: _currentIndex == 2 ? Theme.of(context).accentColor : Theme.of(context).highlightColor,),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.07),
                  height: _height * 0.06,
                  width: _width,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0))
                    ),
                    color: Theme.of(context).accentColor,
                    child: Text("Next", style: Theme.of(context).textTheme.button.copyWith(fontSize: 16.0),),
                    onPressed: () => Navigator.pushNamed(context, CuisinesScreenRoute),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cuisinesListTile(String imagePath, String name, Color color) {
    return Container(
      height: _height * 0.159,
      width: _width * 0.41,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).hintColor,
            blurRadius: 1.0,
            offset: Offset(
              0.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )
        ],
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: _height * 0.159,
            width: _width * 0.41,
            foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                    image: AssetImage(
                      imagePath,
                    ),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: _height * 0.159,
            width: _width * 0.41,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  color,
                  color,
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Positioned(
            bottom: Utils.getDesignHeight(16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AutoSizeText(
                name,
                minFontSize: 14,
                maxFontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
