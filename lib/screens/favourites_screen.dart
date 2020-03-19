import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/widgets/circle_container.dart';

class FavoiuritesScreen extends StatelessWidget {
  final _width = Utils.bodyWidth;
  final _height = Utils.totalBodyHeight;

  List<Map<String, String>> _favIngredientsList = [
    {"imagePath": "assets/images/fav1.jpg", "name": "Apples"},
    {"imagePath": "assets/images/fav2.jpg", "name": "Coconuts"},
    {"imagePath": "assets/images/fav3.jpg", "name": "Bell Pepper"},
    {"imagePath": "assets/images/fav4.jpg", "name": "Lemmon"},
    {"imagePath": "assets/images/fav5.jpg", "name": "Tomatoes"}
  ];

  List<Map<String, String>> _favRecipesList = [
    {
      "imagePath": "assets/images/favouriteRecipes1.jpg",
      "name": "Bread Pudding",
      "tag1": "Dessert",
      "tag2": "High Sugar",
      "tag3": "Low Protein",
      "time": "30 mins - 45 mins"
    },
    {
      "imagePath": "assets/images/favouriteRecipes2.jpg",
      "name": "Bread Pudding",
      "tag1": "Dessert",
      "tag2": "High Sugar",
      "tag3": "Low Protein",
      "time": "30 mins - 45 mins"
    },
    {
      "imagePath": "assets/images/favouriteRecipes3.jpg",
      "name": "Bread Pudding",
      "tag1": "Dessert",
      "tag2": "High Sugar",
      "tag3": "Low Protein",
      "time": "30 mins - 45 mins"
    },
    {
      "imagePath": "assets/images/favouriteRecipes4.jpg",
      "name": "Bread Pudding",
      "tag1": "Dessert",
      "tag2": "High Sugar",
      "tag3": "Low Protein",
      "time": "30 mins - 45 mins"
    },
    {
      "imagePath": "assets/images/favouriteRecipes5.jpg",
      "name": "Bread Pudding",
      "tag1": "Dessert",
      "tag2": "High Sugar",
      "tag3": "Low Protein",
      "time": "30 mins - 45 mins"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: _height * 0.08,
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
                        "Favourites",
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Ingredients",
                        style: Theme.of(context).textTheme.body1.copyWith(fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: _height * 0.172,
                  left: _width * 0.069,
                  child: Container(
                    width: Utils.getDesignWidth(327),
                    height: 0.186 * _height,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return _favInv(
                              _favIngredientsList[index]["imagePath"],
                              _favIngredientsList[index]["name"],
                              context);
                        }),
                  ))
            ],
          ),
          Container(
              margin: EdgeInsets.only(
                  top: Utils.getDesignHeight(25),
                  left: Utils.getDesignWidth(26)),
              child: Text("Recipes",
                  style: Theme.of(context)
                      .textTheme
                      .body2
                      .copyWith(fontSize: 22, fontWeight: FontWeight.w700))),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                  left: Utils.getDesignWidth(26),
                  right: Utils.getDesignWidth(26)),
              child: ListView.builder(
                padding: EdgeInsets.only(top:Utils.getDesignWidth(15)),
                  itemCount: _favRecipesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _favouriteRecipes(
                        _favRecipesList[index]["imagePath"],
                        _favRecipesList[index]["name"],
                        _favRecipesList[index]["tag1"],
                        _favRecipesList[index]["tag2"],
                        _favRecipesList[index]["tag3"],
                        _favRecipesList[index]["time"],
                        context);
                  }),
            ),
          )
        ],
      ),
    );
  }

  Widget _favInv(String imagePath, String name, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: Utils.getDesignWidth(12)),
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
            height: Utils.getDesignHeight(151),
            width: Utils.getDesignWidth(131),
            foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                    image: AssetImage(
                      imagePath,
                    ),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: 0.186 * _height,
            width: 0.349 * _width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.3),
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

  Widget _favouriteRecipes(String imagePath, String name, String tag1,
      String tag2, String tag3, String time, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Utils.getDesignHeight(16),),
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
              width: _width * 0.94,
              foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                      image: AssetImage(
                        imagePath,
                      ),
                      fit: BoxFit.fill)),
            ),
            Container(
              height: _height * 0.23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
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
                  top:  Utils.getDesignHeight(137),
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
                          name,
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
                                tag1,
                                style:
                                    Theme.of(context).textTheme.body2.copyWith(
                                          fontSize: 12.0,
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
                                tag2,
                                style:
                                    Theme.of(context).textTheme.body2.copyWith(
                                          fontSize: 12.0,
                                          color: Colors.white.withOpacity(0.8),
                                        ),
                              ),
                            ),
                            CircleIcon(
                              color: Colors.white.withOpacity(0.8),
                            ),
                            Text(
                              tag3,
                              style: Theme.of(context).textTheme.body2.copyWith(
                                    fontSize: 12.0,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height:  Utils.getDesignHeight(23),
                    width: Utils.getDesignWidth(84),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Center(
                      child: Text(
                        time,
                        style: Theme.of(context).textTheme.body2.copyWith(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
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
}
