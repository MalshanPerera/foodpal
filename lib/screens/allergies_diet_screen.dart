import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/route_constants.dart';
import 'package:foodpal/widgets/circle_container.dart';

class AllergiesDietScreen extends StatefulWidget {
  @override
  _AllergiesDietScreenState createState() => _AllergiesDietScreenState();
}

class _AllergiesDietScreenState extends State<AllergiesDietScreen> {

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
                  child: Text("Do you have any Allergies or Diets?", style: Theme.of(context).textTheme.body2.copyWith(fontSize: 16.0, fontWeight: FontWeight.w500),),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.02),
                  height: _height * 0.045,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          width: _width * 0.431,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: _isAllergies ? Theme.of(context).accentColor : Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: Radius.circular(5.0))
                          ),
                          child: Text("Allergies", style: Theme.of(context).textTheme.body2.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: _isAllergies ? Colors.white : Theme.of(context).highlightColor),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _isAllergies = true;
                          });
                        },
                      ),
                      InkWell(
                        child: Container(
                          width: _width * 0.431,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _isAllergies ? Colors.white : Theme.of(context).accentColor,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0))
                          ),
                          child: Text("Diets", style: Theme.of(context).textTheme.body2.copyWith(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: _isAllergies ?  Theme.of(context).highlightColor : Colors.white),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _isAllergies = false;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                _isAllergies ? Container(
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
                                    child: _listTile(Icons.favorite, "Gluten-Free", _isOne ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
                                    onTap: () {
                                      setState(() {
                                        _isOne =! _isOne;
                                      });
                                  },),
                                  InkWell(
                                    child: _listTile(Icons.favorite, "Peanut-Free", _isTwo ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
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
                                  InkWell(child: _listTile(Icons.favorite, "Seafood-Free", _isThree ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
                                    onTap: () {
                                      setState(() {
                                        _isThree =! _isThree;
                                      });
                                    },),
                                  InkWell(child: _listTile(Icons.favorite, "Sesame-Free", _isFour ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
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
                                  InkWell(child: _listTile(Icons.favorite, "Wheat-Free", _isFive ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
                                    onTap: () {
                                      setState(() {
                                        _isFive =! _isFive;
                                      });
                                    },),
                                  InkWell(child: _listTile(Icons.favorite, "Egg-Free", _isSix ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
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
                                  InkWell(child: _listTile(Icons.favorite, "Dairy-Free", _isSeven ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
                                    onTap: () {
                                      setState(() {
                                        _isSeven =! _isSeven;
                                      });
                                    },),
                                  InkWell(child: _listTile(Icons.favorite, "Soy-Free", _isEight ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
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
                    ],
                    onPageChanged: (index){
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ) : Container(
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
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: <Widget>[
                                  InkWell(child: _listTile(Icons.favorite, "Ketogenic", _isNine ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
                                    onTap: () {
                                      setState(() {
                                        _isNine =! _isNine;
                                      });
                                    },),
                                  InkWell(child: _listTile(Icons.favorite, "Lacto Vegetarian", _isTen ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
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
                                  InkWell(child: _listTile(Icons.favorite, "Ovo Vegetarian", _isEleven ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
                                    onTap: () {
                                      setState(() {
                                        _isEleven =! _isEleven;
                                      });
                                    },),
                                  InkWell(child: _listTile(Icons.favorite, "Pescetarian", _isTwelve ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
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
                                  InkWell(child: _listTile(Icons.favorite, "Lacto-Ovo Vegetarian", _isThirteen ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
                                    onTap: () {
                                      setState(() {
                                        _isThirteen =! _isThirteen;
                                      });
                                    },),
                                  InkWell(child: _listTile(Icons.favorite, "Paleo", _isFourteen ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
                                    onTap: () {
                                      setState(() {
                                        _isFourteen =! _isFourteen;
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
                                  InkWell(child: _listTile(Icons.favorite, "Vegan", _isFifteen ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
                                    onTap: () {
                                      setState(() {
                                        _isFifteen =! _isFifteen;
                                      });
                                    },),
                                  InkWell(child: _listTile(Icons.favorite, "Non-Veg", _isSixteen ? Theme.of(context).accentColor : Theme.of(context).highlightColor),
                                    onTap: () {
                                      setState(() {
                                        _isSixteen =! _isSixteen;
                                      });
                                    },),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    onPageChanged: (index) {
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

  Widget _listTile(IconData icon, String title, Color color){
    return Container(
      height: _height * 0.159,
      width: _width * 0.41,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: color, width: 4),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(icon),
          ),
          Container(
            child: Text(title, style: Theme.of(context).textTheme.body2.copyWith(fontSize: 16.0, fontWeight: FontWeight.w500),),
          ),
        ],
      ),
    );
  }
}
