import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/route_constants.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class LandingScreen extends StatelessWidget {
  final _width = Utils.bodyWidth;
  final _height = Utils.totalBodyHeight;

  static const length = 3;
  final pageIndexNotifier = ValueNotifier<int>(0);

  final List<Map<String, dynamic>> _landingPageList = [
    {
      "imageURL": 'assets/images/landing_page_image_one.png',
      "textOne": 'Lots of Recipes!',
      "textTwo":
          'Discover over 350,000 recipes with over 78 cuisines from around the globe',
      "buttonVisibility": false
    },
    {
      "imageURL": 'assets/images/landing_page_image_two.png',
      "textOne": 'Home Ingredients Only!',
      "textTwo": 'Prepare all your meals from what you already have at home',
      "buttonVisibility": false
    },
    {
      "imageURL": 'assets/images/landing_page_image_three.png',
      "textOne": 'Fitness Is Life!',
      "textTwo":
          'Customize your Recipes given to you according to your Meal Plan or Diet',
      "buttonVisibility": true
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: FractionalOffset.topCenter,
        children: <Widget>[
          PageView.builder(
            onPageChanged: (index) => pageIndexNotifier.value = index,
            itemCount: length,
            itemBuilder: (context, index) {
              return _pageViewScreen(
                imageURL: _landingPageList[index]["imageURL"],
                textOne: _landingPageList[index]["textOne"],
                textTwo: _landingPageList[index]["textTwo"],
                buttonVisibility: _landingPageList[index]["buttonVisibility"],
                context: context,
              );
            },
          ),
          Container(
            margin: EdgeInsets.only(top: _height * 0.031),
            child: _pageViewIndicator(context),
          ),
        ],
      ),
    );
  }

  PageViewIndicator _pageViewIndicator(BuildContext context) {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Container(
          width: _width * 0.28,
          height: 2.5,
          color: Color(0xFFD8D5D5),
        ),
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Container(
          width: _width * 0.28,
          height: 2.5,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }

  Widget _pageViewScreen(
      {String imageURL,
      String textOne,
      String textTwo,
      bool buttonVisibility,
      BuildContext context}) {
    return Container(
      margin: EdgeInsets.only(
          top: _height * 0.152, left: _width * 0.069, right: _width * 0.069),
      child: Column(
        children: <Widget>[
          Container(
            child: CircleAvatar(
              radius: _width * 0.34,
              backgroundColor: Theme.of(context).accentColor,
              backgroundImage: AssetImage(imageURL),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _height * 0.1),
            child: Text(
              textOne,
              style: Theme.of(context).textTheme.title.copyWith(
                    fontSize: 26.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _height * 0.03),
            child: Text(
              textTwo,
              style: Theme.of(context).textTheme.body1.copyWith(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          Visibility(
            visible: buttonVisibility,
            child: Container(
              width: _width,
              height: _height * 0.06,
              margin: EdgeInsets.only(top: _height * 0.1),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                color: Theme.of(context).accentColor,
                elevation: 0.5,
                child: Text(
                  "Let's Go!",
                  style: Theme.of(context).textTheme.button,
                ),
                onPressed: () => Navigator.pushNamed(context, LoginScreenRoute),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
