import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _width = Utils.bodyWidth;
  final _height = Utils.totalBodyHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: _width,
                  height: _height * 0.28,
                  child: Image.asset('assets/images/home_background_image.png', fit: BoxFit.fill,),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.068, left: _width * 0.069,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text("Home", style: Theme.of(context).textTheme.title,),
                            ),
                            Container(
                              child: Text("Time for some Breakfast", style: Theme.of(context).textTheme.body1,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.02, right: _width * 0.069),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15.0),
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search here...",
                            hintStyle: Theme.of(context).textTheme.body2
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
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
                        margin: EdgeInsets.only(top: _height * 0.03,),
                        width: _width * 0.86,
                        height:  _height * 0.04,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: _width * 0.285,
                              child: Text("For You", style: Theme.of(context).textTheme.body2, textAlign: TextAlign.center,),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: _height * 0.007, bottom: _height * 0.007),
                              color: Theme.of(context).highlightColor,
                              width: 1,
                            ),
                            Container(
                              width: _width * 0.285,
                              child: Text("Most Popular", style: Theme.of(context).textTheme.body2, textAlign: TextAlign.center,),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: _height * 0.007, bottom: _height * 0.007),
                              color: Theme.of(context).highlightColor,
                              width: 1,
                            ),
                            Container(
                              width: _width * 0.285,
                              child: Text("Ingredinets", style: Theme.of(context).textTheme.body2, textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.018, bottom: 10.0),
                        child: Text("Our Top Picks", style: Theme.of(context).textTheme.body2.copyWith(fontSize: 16.0),),
                      ),
                      Container(
                        height: _height * 0.25,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return _foodDetailsListTile();
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.018, bottom: 10.0),
                        child: Text("Your Diet", style: Theme.of(context).textTheme.body2.copyWith(fontSize: 16.0),),
                      ),
                      Container(
                        height: _height * 0.25,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return _foodDetailsListTile();
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.018, bottom: 10.0),
                        child: Text("5 Ingredients or Less", style: Theme.of(context).textTheme.body2.copyWith(fontSize: 16.0),),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: _height * 0.1),
                        height: _height * 0.25,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return _foodDetailsListTile();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _foodDetailsListTile(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
      margin: EdgeInsets.only(left: 1.0, right: _width * 0.018),
      width: _width * 0.49,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
              children: <Widget>[
                Container(
                  width: _width * 0.49,
                  child: Image.asset(
                    'assets/images/foodImageOne.png', fit: BoxFit.fill,),
                ),
                Container(
                  height: _height * 0.185,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black,
                          ],
                          stops: [0.0, 1.0],
                      ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.131, left: _width * 0.018, right: _width * 0.018),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text("French Toast", style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w500),),
                      ),
                      Container(
                        child: Text("Breakfast", style: Theme.of(context).textTheme.body2.copyWith(fontWeight: FontWeight.w500),),
                      ),
                    ],
                  ),
                ),
              ]
          ),
          Padding(
            padding: EdgeInsets.only(top: _height * 0.018, left: _width * 0.018, right: _width * 0.018),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text("Serves:", style: Theme.of(context).textTheme.body2,),
                      ),
                      Container(
                        child: Icon(Icons.person, size: 15, color: Theme.of(context).highlightColor,),
                      ),
                      Container(
                        child: Icon(Icons.person, size: 15, color: Theme.of(context).highlightColor,),
                      ),
                      Container(
                        child: Icon(Icons.person, size: 15, color: Theme.of(context).highlightColor,),
                      ),
                      Container(
                        child: Icon(Icons.person, size: 15, color: Theme.of(context).highlightColor,),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Icon(Icons.favorite_border, color: Theme.of(context).primaryColor, size: 18,),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _height * 0.001, left: _width * 0.018, right: _width * 0.018),
            child: Text("1235 Kcal (500g)", style: Theme.of(context).textTheme.body2,),
          ),
        ],
      ),
    );
  }
}
