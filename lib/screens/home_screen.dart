import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/route_constants.dart';
import 'package:foodpal/widgets/circle_container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _width = Utils.bodyWidth;
  final _height = Utils.totalBodyHeight;

  int _currentPageIndex = 0;

  List<Map<String, dynamic>> _topPicksList = [
    {"imageURL": "assets/images/topPicks1.jpg", "name": "French Toast"},
    {"imageURL": "assets/images/topPicks2.jpg", "name": "French Toast"},
    {"imageURL": "assets/images/topPick3.jpg", "name": "French Toast"},
    {"imageURL": "assets/images/topPicks4.jpg", "name": "French Toast"},
    {"imageURL": "assets/images/topPicks5.jpg", "name": "French Toast"},
  ];

  List<Map<String, dynamic>> _yourDietList = [
    {"imageURL": "assets/images/diet1.jpg", "name": "Morning Salad"},
    {"imageURL": "assets/images/diet2.jpg", "name": "Morning Salad"},
    {"imageURL": "assets/images/diet3.jpg", "name": "Morning Salad"},
    {"imageURL": "assets/images/diet4.jpg", "name": "Morning Salad"},
    {"imageURL": "assets/images/diet5.jpg", "name": "Morning Salad"},
  ];

  List<Map<String, dynamic>> _ingredientsOrLessList = [
    {"imageURL": "assets/images/5Ingredients1.jpg", "name": "Bed & Breakfast"},
    {"imageURL": "assets/images/5Ingredients2.jpg", "name": "Bed & Breakfast"},
    {"imageURL": "assets/images/5Ingredients3.jpg", "name": "Bed & Breakfast"},
    {"imageURL": "assets/images/5Ingredients4.jpg", "name": "Bed & Breakfast"},
    {"imageURL": "assets/images/5Ingredients5.jpg", "name": "Bed & Breakfast"},
  ];

  List<Map<String, dynamic>> _ingredientsList = [
    {
      "ingredient": "Chicken",
      "details": [
        {
          "imageURL": "assets/images/chicken1.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "45 mins - 1 hour"
        },
        {
          "imageURL": "assets/images/chicken2.jpg",
          "name": "Chicken Nuggets with Mexican Tacos",
          "cal": "1235 Kcal (500g)",
          "time": "30 mins - 1 hour"
        },
        {
          "imageURL": "assets/images/chicken3.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "30 mins - 45 mins"
        },
        {
          "imageURL": "assets/images/chicken4.jpg",
          "name": "Chicken Wings with Red Hot Sauce",
          "cal": "1235 Kcal (500g)",
          "time": "20 mins - 30 mins"
        },
        {
          "imageURL": "assets/images/chicken5.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "45 mins - 1 hour"
        },
      ]
    },
    {
      "ingredient": "Cheese",
      "details": [
        {
          "imageURL": "assets/images/cheese1.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "20 mins - 1 hour"
        },
        {
          "imageURL": "assets/images/cheese2.jpg",
          "name": "Chicken Nuggets with Mexican Tacos",
          "cal": "1235 Kcal (500g)",
          "time": "45 mins - 1 hour"
        },
        {
          "imageURL": "assets/images/cheese3.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "40 mins - 45 mins"
        },
        {
          "imageURL": "assets/images/cheese4.jpg",
          "name": "Chicken Wings with Red Hot Sauce",
          "cal": "1235 Kcal (500g)",
          "time": "20 mins - 30 mins"
        },
        {
          "imageURL": "assets/images/cheese5.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "45 mins - 1 hour"
        },
      ]
    },
    {
      "ingredient": "Bread",
      "details": [
        {
          "imageURL": "assets/images/bread1.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "45 mins - 1 hour"
        },
        {
          "imageURL": "assets/images/bread2.jpg",
          "name": "Chicken Nuggets with Mexican Tacos",
          "cal": "1235 Kcal (500g)",
          "time": "30 mins - 1 hour"
        },
        {
          "imageURL": "assets/images/bread3.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "30 mins - 45 mins"
        },
        {
          "imageURL": "assets/images/bread4.jpg",
          "name": "Chicken Wings with Red Hot Sauce",
          "cal": "1235 Kcal (500g)",
          "time": "20 mins - 30 mins"
        },
        {
          "imageURL": "assets/images/bread5.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "45 mins - 1 hour"
        },
      ]
    },
    {
      "ingredient": "Eggs",
      "details": [
        {
          "imageURL": "assets/images/eggs1.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "45 mins - 1 hour"
        },
        {
          "imageURL": "assets/images/eggs2.jpg",
          "name": "Chicken Nuggets with Mexican Tacos",
          "cal": "1235 Kcal (500g)",
          "time": "30 mins - 1 hour"
        },
        {
          "imageURL": "assets/images/eggs3.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "30 mins - 45 mins"
        },
        {
          "imageURL": "assets/images/eggs4.jpg",
          "name": "Chicken Wings with Red Hot Sauce",
          "cal": "1235 Kcal (500g)",
          "time": "20 mins - 30 mins"
        },
        {
          "imageURL": "assets/images/eggs5.jpg",
          "name": "Chicken Wings with Red Hot Sauce",
          "cal": "1235 Kcal (500g)",
          "time": "20 mins - 30 mins"
        },
      ]
    },
    {
      "ingredient": "Milk",
      "details": [
        {
          "imageURL": "assets/images/milk1.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "45 mins - 1 hour"
        },
        {
          "imageURL": "assets/images/milk2.jpg",
          "name": "Chicken Nuggets with Mexican Tacos",
          "cal": "1235 Kcal (500g)",
          "time": "30 mins - 1 hour"
        },
        {
          "imageURL": "assets/images/milk3.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "30 mins - 45 mins"
        },
        {
          "imageURL": "assets/images/milk4.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "30 mins - 45 mins"
        },
        {
          "imageURL": "assets/images/milk5.jpg",
          "name": "Roasted Chicken with Parmasean Cheese",
          "cal": "1235 Kcal (500g)",
          "time": "30 mins - 45 mins"
        },
      ]
    },
  ];

  List<Map<String, String>> _mostPopularList = [
    {
      "imageURL": "assets/images/popular1.jpg",
      "name": "Chicken Pizza",
      "subtitle": ""
    },
    {
      "imageURL": "assets/images/popular2.jpg",
      "name": "Rice with Salmon Slices",
      "subtitle": ""
    },
    {
      "imageURL": "assets/images/popular3.jpg",
      "name": "Pumpkin Soup",
      "subtitle": ""
    },
    {
      "imageURL": "assets/images/popular4.jpg",
      "name": "American Pie",
      "subtitle": ""
    },
    {
      "imageURL": "assets/images/popular5.jpg",
      "name": "Chicken Pizza",
      "subtitle": ""
    },
  ];

  int _currentIngredientIndex = 0;

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
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: _width,
                    height: _height * 0.28,
                    child: Image.asset(
                      'assets/images/home_background_image.png',
                      fit: BoxFit.fill,
                    ),
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
                      child: Text(
                        "Home",
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Time for some Breakfast",
                        style: Theme.of(context).textTheme.body1,
                      ),
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
                        hintStyle: Theme.of(context).textTheme.body2),
                    onSubmitted: (val) {
                      Navigator.of(context)
                          .pushNamed(SearchScreenRoute, arguments: val);
                    },
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
                  height: _height * 0.05,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          width: _width * 0.285,
                          child: Text(
                            "For You",
                            style: _currentPageIndex == 0
                                ? Theme.of(context).textTheme.body2.copyWith(
                                    color: Theme.of(context).accentColor)
                                : Theme.of(context).textTheme.body2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _controller.animateToPage(
                              0,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                            _currentPageIndex = 0;
                          });
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: _height * 0.007, bottom: _height * 0.007),
                        color: Theme.of(context).highlightColor,
                        width: 0.5,
                      ),
                      InkWell(
                        child: Container(
                          width: _width * 0.285,
                          child: Text(
                            "Most Popular",
                            style: _currentPageIndex == 1
                                ? Theme.of(context).textTheme.body2.copyWith(
                                    color: Theme.of(context).accentColor)
                                : Theme.of(context).textTheme.body2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _controller.animateToPage(
                              1,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                            _currentPageIndex = 1;
                          });
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: _height * 0.007, bottom: _height * 0.007),
                        color: Theme.of(context).highlightColor,
                        width: 0.5,
                      ),
                      InkWell(
                        child: Container(
                          width: _width * 0.285,
                          child: Text(
                            "Ingredinets",
                            style: _currentPageIndex == 2
                                ? Theme.of(context).textTheme.body2.copyWith(
                                    color: Theme.of(context).accentColor)
                                : Theme.of(context).textTheme.body2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _controller.animateToPage(
                              2,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                            _currentPageIndex = 2;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _forYouTab(),
                _mostPopularTab(),
                _ingredientsTab(),
              ],
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _forYouTab() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: _width * 0.069, bottom: _height * 0.018),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: _height * 0.018, bottom: 5.0),
              child: Text(
                "Our Top Picks",
                style:
                    Theme.of(context).textTheme.body2.copyWith(fontSize: 16.0),
              ),
            ),
            Container(
              height: _height * 0.275,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _topPicksList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: _forYouTabListTile(
                      imagePath: _topPicksList[index]["imageURL"],
                      name: _topPicksList[index]["name"],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: _height * 0.018, bottom: 5.0),
              child: Text(
                "Your Diet",
                style:
                    Theme.of(context).textTheme.body2.copyWith(fontSize: 16.0),
              ),
            ),
            Container(
              height: _height * 0.275,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _yourDietList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: _forYouTabListTile(
                      imagePath: _yourDietList[index]["imageURL"],
                      name: _yourDietList[index]["name"],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: _height * 0.018, bottom: 5.0),
              child: Text(
                "5 Ingredients or Less",
                style:
                    Theme.of(context).textTheme.body2.copyWith(fontSize: 16.0),
              ),
            ),
            Container(
              height: _height * 0.275,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _ingredientsOrLessList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: _forYouTabListTile(
                      imagePath: _ingredientsOrLessList[index]["imageURL"],
                      name: _ingredientsOrLessList[index]["name"],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _mostPopularTab() {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: _mostPopularList.length,
        itemBuilder: (BuildContext context, int index) {
          return _mostPopularListTile(index);
        },
      ),
    );
  }

  Widget _ingredientsTab() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: _height * 0.015,
              left: _width * 0.069,
              right: _width * 0.069,
              bottom: _height * 0.01),
          height: _height * 0.04,
          width: _width,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _ingredientsList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: _currentIngredientIndex == index
                        ? Theme.of(context).accentColor
                        : Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                  ),
                  height: _height * 0.04,
                  width: _width * 0.188,
                  child: Center(
                    child: Text(
                      _ingredientsList[index]["ingredient"],
                      style: Theme.of(context).textTheme.body2.copyWith(
                          fontSize: 15.0,
                          color: _currentIngredientIndex == index
                              ? Colors.white
                              : Theme.of(context).highlightColor),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _currentIngredientIndex = index;
                  });
                },
              );
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: _height * 0.015),
            itemCount:
                _ingredientsList[_currentIngredientIndex]["details"].length,
            itemBuilder: (BuildContext context, int index) {
              return _ingredientListTile(
                imagePath: _ingredientsList[_currentIngredientIndex]["details"]
                    [index]["imageURL"],
                foodName: _ingredientsList[_currentIngredientIndex]["details"]
                    [index]["name"],
                calories: _ingredientsList[_currentIngredientIndex]["details"]
                    [index]["cal"],
                time: _ingredientsList[_currentIngredientIndex]["details"]
                    [index]["time"],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _forYouTabListTile({String imagePath, String name}) {
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
      margin: EdgeInsets.only(
          left: 1.0, right: _width * 0.018, bottom: _height * 0.01),
      width: _width * 0.48,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: _height * 0.181,
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.fitWidth),
              ),
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
              margin: EdgeInsets.only(
                  top: _height * 0.15,
                  left: _width * 0.018,
                  right: _width * 0.018),
              child: Container(
                child: Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(
                top: _height * 0.012,
                left: _width * 0.018,
                right: _width * 0.018),
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
                              child: Text(
                                "Protein",
                                style: Theme.of(context)
                                    .textTheme
                                    .body2
                                    .copyWith(fontSize: 10.0),
                              ),
                            ),
                            CircleIcon(),
                            Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Text(
                                "Lunch",
                                style: Theme.of(context)
                                    .textTheme
                                    .body2
                                    .copyWith(fontSize: 10.0),
                              ),
                            ),
                            CircleIcon(),
                            Text(
                              "Low Fat",
                              style: Theme.of(context)
                                  .textTheme
                                  .body2
                                  .copyWith(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: _height * 0.005, right: _width * 0.018),
                        child: Text(
                          "1235 Kcal (500g)",
                          style: Theme.of(context).textTheme.body2,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: _width * 0.018),
                  child: Icon(
                    Icons.favorite_border,
                    color: Theme.of(context).accentColor,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: _height * 0.005,
              left: _width * 0.018,
              right: _width * 0.018,
            ),
            child: Text(
              "45 mins - 1 hour",
              style: Theme.of(context).textTheme.body2.copyWith(
                  color: Theme.of(context).accentColor, fontSize: 10.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mostPopularListTile(int index) {
    return Container(
      margin: EdgeInsets.only(
          left: _width * 0.069, right: _width * 0.069, bottom: 10.0),
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
          Stack(children: <Widget>[
            Container(
              height: _height * 0.23,
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                image: DecorationImage(
                    image: AssetImage(_mostPopularList[index]["imageURL"]),
                    fit: BoxFit.fitWidth),
              ),
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
              margin: EdgeInsets.only(
                  top: _height * 0.166,
                  left: _width * 0.018,
                  right: _width * 0.018),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          _mostPopularList[index]["name"],
                          style: Theme.of(context).textTheme.body1.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 20.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: _width * 0.018),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Text(
                                "Protein",
                                style:
                                    Theme.of(context).textTheme.body2.copyWith(
                                          fontSize: 10.0,
                                          color: Colors.white.withOpacity(0.8),
                                        ),
                              ),
                            ),
                            CircleIcon(
                              color: Colors.white.withOpacity(0.8),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Text(
                                "Lunch",
                                style:
                                    Theme.of(context).textTheme.body2.copyWith(
                                          fontSize: 10.0,
                                          color: Colors.white.withOpacity(0.8),
                                        ),
                              ),
                            ),
                            CircleIcon(
                              color: Colors.white.withOpacity(0.8),
                            ),
                            Text(
                              "Low Fat",
                              style: Theme.of(context).textTheme.body2.copyWith(
                                    fontSize: 10.0,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Icon(
                      Icons.favorite_border,
                      color: Theme.of(context).accentColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }

  Widget _ingredientListTile(
      {String imagePath, String foodName, String calories, String time}) {
    return Container(
      margin: EdgeInsets.only(
          left: _width * 0.069, right: _width * 0.069, bottom: 10.0),
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
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
//              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).hintColor,
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                  offset: Offset(
                    0.0, // horizontal, move right 10
                    2.0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).accentColor,
              radius: _width * 0.116,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
          Container(
            width: _width * 0.552,
            margin: EdgeInsets.fromLTRB(_width * 0.026, _height * 0.012,
                _width * 0.026, _height * 0.012),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: _width * 0.33,
                        child: Text(
                          foodName,
                          style: Theme.of(context).textTheme.body2,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.favorite_border,
                          color: Theme.of(context).accentColor,
                          size: 20,
                        ),
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
                        child: Text(
                          "Protein",
                          style: Theme.of(context)
                              .textTheme
                              .body2
                              .copyWith(fontSize: 10.0),
                        ),
                      ),
                      CircleIcon(),
                      Padding(
                        padding: EdgeInsets.only(right: 5.0),
                        child: Text(
                          "Lunch",
                          style: Theme.of(context)
                              .textTheme
                              .body2
                              .copyWith(fontSize: 10.0),
                        ),
                      ),
                      CircleIcon(),
                      Text(
                        "Low Fat",
                        style: Theme.of(context)
                            .textTheme
                            .body2
                            .copyWith(fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.005),
                  child: Text(
                    calories,
                    style: Theme.of(context).textTheme.body2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.013),
                  alignment: Alignment.centerRight,
                  child: Text(
                    time,
                    style: Theme.of(context).textTheme.body2.copyWith(
                        fontSize: 10.0, color: Theme.of(context).accentColor),
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
