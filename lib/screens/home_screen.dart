import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/widgets/circle_container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _width = Utils.bodyWidth;
  final _height = Utils.totalBodyHeight;

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: _width,
                      height: _height * 0.28,
                      child: Image.asset('assets/images/home_background_image.png', fit: BoxFit.fill,),
                    ),
                    Container(
                      width: _width,
                      height: _height * 0.03,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ],
                ),
                Positioned(
                  top: _height * 0.068,
                  left: _width * 0.069,
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
                Positioned(
                  top: _height * 0.17,
                  left: _width * 0.069,
                  right: _width * 0.069,
                  child: Container(
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
                ),
                Positioned(
                  top: _height * 0.25,
                  left: _width * 0.069,
                  right: _width * 0.069,
                  child: Container(
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
                    height:  _height * 0.05,
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
                ),
              ],
            ),
            Container(
              color: Theme.of(context).backgroundColor,
              height: _height,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _forYouTab(),
                  _mostPopular(),
                  _ingredientsTab(),
                ],
                onPageChanged:(index) {
                  setState(() {

                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _forYouTab(){
    return Padding(
      padding: EdgeInsets.only(left: _width * 0.069),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: _height * 0.018, bottom: 5.0),
            child: Text("Our Top Picks", style: Theme
                .of(context)
                .textTheme
                .body2
                .copyWith(fontSize: 16.0),),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.only(top: _height * 0.005, bottom: _height * 0.005),
                    child: _forYouTabListTile());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _height * 0.018, bottom: 5.0),
            child: Text("Your Diet", style: Theme
                .of(context)
                .textTheme
                .body2
                .copyWith(fontSize: 16.0),),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    padding: EdgeInsets.only(top: _height * 0.005, bottom: _height * 0.005),
                    child: _forYouTabListTile());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _height * 0.018, bottom: 5.0),
            child: Text("5 Ingredients or Less", style: Theme
                .of(context)
                .textTheme
                .body2
                .copyWith(fontSize: 16.0),),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    padding: EdgeInsets.only(top: _height * 0.005, bottom: _height * 0.005),
                    child: _forYouTabListTile());
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _mostPopular(){
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return _mostPopularListTile();
        },
      ),
    );
  }

  Widget _ingredientsTab(){
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return _ingredientListTile();
        },
      ),
    );
  }

  Widget _forYouTabListTile(){
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
      width: _width * 0.48,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
              children: <Widget>[
                Container(
                  height: _height * 0.181,
                  child: Image.asset(
                    'assets/images/foodImageOne.png', fit: BoxFit.fill,),
                ),
                Container(
                  height: _height * 0.181,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.8),
                          ],
                          stops: [0.0, 1.0],
                      ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.15, left: _width * 0.018, right: _width * 0.018),
                  child: Container(
                    child: Text("French Toast", style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w500),),
                  ),
                ),
              ]
          ),
          Padding(
            padding: EdgeInsets.only(top: _height * 0.012, left: _width * 0.018, right: _width * 0.018),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: _width * 0.018),
                        child: Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: Text("Protein", style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0),
                                ),
                            ),
                            CircleIcon(),
                            Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: Text("Lunch",
                                  style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0),
                                ),
                            ),
                            CircleIcon(),
                            Text("Low Fat",
                              style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.005, right: _width * 0.018),
                        child: Text("1235 Kcal (500g)", style: Theme.of(context).textTheme.body2,),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: _width * 0.018),
                  child: Icon(Icons.favorite_border, color: Theme.of(context).accentColor, size: 18,),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _height * 0.005, left: _width * 0.018, right: _width * 0.018,),
            child: Text("45 mins - 1 hour", style: Theme.of(context).textTheme.body2.copyWith(color: Theme.of(context).accentColor, fontSize: 10.0),),
          ),
        ],
      ),
    );
  }

  Widget _mostPopularListTile(){
    return Container(
      margin: EdgeInsets.only(left: _width * 0.069, right: _width * 0.069, bottom: 10.0),
      height: _height * 0.23,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
              children: <Widget>[
                Container(
                  height: _height * 0.23,
                  width: _width * 0.94,
                  child: Image.asset(
                    'assets/images/foodImageTwo.png', fit: BoxFit.fill,),
                ),
                Container(
                  height: _height * 0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white,
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.8),
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.166, left: _width * 0.018, right: _width * 0.018),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text("French Toast", style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w500, fontSize: 20.0),),
                          ),
                          Container(
                            child: Text("Lunch, Chicken , Italian", style: Theme.of(context).textTheme.body2.copyWith(fontWeight: FontWeight.w500),),
                          ),
                        ],
                      ),
                      Container(
                        child: Icon(Icons.favorite_border, color: Theme.of(context).accentColor, size: 20,),
                      ),
                    ],
                  ),
                ),
              ]
          ),
        ],
      ),
    );
  }

  Widget _ingredientListTile(){
    return Container(
      margin: EdgeInsets.only(left: _width * 0.069, right: _width * 0.069, bottom: 10.0),
      height: _height * 0.146,
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
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: _width * 0.026),
            child: CircleAvatar(
              backgroundColor: Colors.green,
               radius: _width * 0.116,
              backgroundImage: AssetImage('assets/images/foodImageTwo.png'),
            ),
          ),
          Container(
            width: _width * 0.552,
            margin: EdgeInsets.fromLTRB(_width * 0.026, _height * 0.012, _width * 0.026, _height * 0.012),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: _width * 0.33,
                        child: Text("Roasted Chicken with Parmasean Cheese", style: Theme.of(context).textTheme.body2,),
                      ),
                      Container(
                        child: Icon(Icons.favorite_border, color: Theme.of(context).accentColor, size: 20,),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 5.0),
                        child: Text("Protein", style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0),
                        ),
                      ),
                      CircleIcon(),
                      Padding(
                        padding: EdgeInsets.only(right: 5.0),
                        child: Text("Lunch",
                          style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0),
                        ),
                      ),
                      CircleIcon(),
                      Text("Low Fat",
                        style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.005),
                  child: Text("1235 Kcal (500g)",
                    style: Theme.of(context).textTheme.body2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.013),
                  alignment: Alignment.centerRight,
                  child: Text("45 mins - 1 hour",
                    style: Theme.of(context).textTheme.body2.copyWith(fontSize: 10.0, color: Theme.of(context).accentColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
