import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

/*
stateful - when update a container the whole screen will render
stateless - the whole screen will not render only the container (bloc pattern)
 */


class FoodDetailsScreen extends StatefulWidget {
  @override
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {

  final _width = Utils.bodyWidth;
  final _height = Utils.totalBodyHeight;

  int _currentPageIndex = 0;

  List<Map<String, dynamic>> _ingredientsList = [
    {
      "title": "12 mini flour tortillas, warmed",
      "availabilty": "Available",
      "color":Colors.green
    },
    {
      "title": "1 1/2 pounds skirt steak",
      "availabilty": "Insufficent",
      "color":Colors.amber

    },
    {
      "title": "2 tablespoons canola oil, divided",
      "availabilty": "Available",
      "color":Colors.green
    },
    {
      "title": "2 teaspoons chili powder",
      "availabilty": "Insufficent",
      "color": Colors.amber
    },
    {
      "title": "1 teaspoon dried oregano",
      "availabilty": "Not Available",
      "color":Colors.red
    },
    {
      "title": "3/4 cup diced red onion",
      "availabilty": "Not Available",
      "color":Colors.red
    },
    {
      "title": "1/2 cup chopped cilantro leaves",
      "availabilty": "Available",
      "color":Colors.green
    },
  ];

  List<Map<String, String>> _directionList = [
    {
      "direction": "In a medium bowl, combine soy sauce, lime juice,1 tablespoon canola oil, garlic, chili powder,cumin and oregano"
    },
    {
      "direction":"a gallon size Ziploc bag or large bowl, combine soy sauce mixture and steak; marinate for at least 1 hour up to 4 hours, turning the bag occasionally"
    },
    {
      "direction": "Heat remaining 1 tablespoon canola oil in a large skillet over medium high heat. Add steak and marinade, and cook, stirring often, until steak has browned and marinade has reduced, about 5-6 minutes, or until desired doneness."
    },
    {
      "direction": "Heat remaining 1 tablespoon canola oil in a large skillet over medium high heat. Add steak and marinade, and cook, stirring often, until steak"
    },
    {
      "direction": "Serve steak in tortillas, topped with onion,cilantro and lime."
    },
  ];

  List<Map<String, dynamic>> _similarRecipesList = [
    {
      "imageURL": "assets/images/similar2.jpg",
      "name": "Chicken Lasagna",
      "subtitle": "Mexican , Dinner",
      "time": 60,
    },
    {
      "imageURL": "assets/images/similar4.jpg",
      "name": "Mexican Jarritoes",
      "subtitle": "Mexican , Dinner",
      "time": 90,
    },
  ];

  List<String> _tagList = ["Chicken", "Lunch", "Protien", "Low Crabs", "Meat"];
  List<Widget> _tagContainerList = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _tagList.forEach((tag){
      _tagContainerList.add(_tagContainer(tag));
    });
  }

  @override
  Widget build(BuildContext context) {

    //whole screen - Scaffold
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //widget to get different layers of containers
            Stack(
              children: <Widget>[
                //Container of Background Image
                Container(
                  width: _width,
                  height: _height * 0.22,
                  child: Image.asset('assets/images/nachos.png', fit: BoxFit.fill,),
                ),
                //Container of Food Name Text and FloatingActionButton
                Container(
                  margin: EdgeInsets.only(top: _height * 0.08, left: _width * 0.069, right: _width* 0.069),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text('Mexican Nachos', style: Theme.of(context).textTheme.title.copyWith(fontSize: 28.0)),
                          ),
                          Container(
                            child: Text('Mexican Cuisine', style: TextStyle(color: Colors.white, fontSize: 18.0),),
                          ),
                        ],
                      ),
                      Container(
                        width: _width*0.08,
                        child: FloatingActionButton(
                           child: Icon(Icons.star,color: Colors.amber, size: 16.0,),
                          backgroundColor: Colors.white,
                          onPressed: (){

                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.18, right: _width * 0.069, left: _width * 0.069),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: _width*0.26,
                        height: _height*0.12,
                        child:  Card(
                          margin: EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.only(top: _height*0.025),
                            child: Column(
                              children: <Widget>[
                                Text('07',style: Theme.of(context).textTheme.body2.copyWith(fontSize: 33.0)),
                                Text('Ingredients',style: Theme.of(context).textTheme.body2.copyWith(fontSize: 15.0))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: _width*0.26,
                        height: _height*0.12,
                        child:   Card(
                          margin: EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child:  Container(
                            padding: EdgeInsets.only(top: _height*0.025),
                            child:  Column(
                              children: <Widget>[
                                 Text('45',style: Theme.of(context).textTheme.body2.copyWith(fontSize: 33.0)),
                                 Text('Minutes',style: Theme.of(context).textTheme.body2.copyWith(fontSize: 15.0))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: _width*0.26,
                        height: _height*0.12,
                        child:   Card(
                          margin: EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child:  Container(
                            padding: EdgeInsets.only(top: _height*0.025),
                            child:  Column(
                              children: <Widget>[
                                 Text('5',style: Theme.of(context).textTheme.body2.copyWith(fontSize: 33.0)),
                                 Text('Adults',style: Theme.of(context).textTheme.body2.copyWith(fontSize: 15.0))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.315, left: _width * 0.069, right: _width* 0.069),
                  child: Text('Tags',style: Theme.of(context).textTheme.body2.copyWith(fontSize: 22.0)),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.355, left: _width * 0.069, right: _width* 0.069),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: _tagContainerList
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.405, left: _width * 0.069, right: _width* 0.069),
                  child: Text('Nutrition',style: Theme.of(context).textTheme.body2.copyWith(fontSize: 22.0)),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.445, left: _width * 0.069, right: _width* 0.069),
                  height: _height*0.282,
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
                  child: Container(
                    margin: EdgeInsets.all(_width * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: _height * 0.007),
                          child: Text("Calories", style: Theme.of(context).textTheme.body2,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: _height * 0.005, left: _width * 0.0075),
                          child: LinearPercentIndicator(
                            padding: EdgeInsets.all(0.0),
                            width: _width * 0.79,
                            lineHeight: 8.0,
                            percent: 0.7,
                            progressColor: Color(0xFFFF5353),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: _height * 0.008),
                          alignment: Alignment.centerRight,
                          child: Text("1200", style: Theme.of(context).textTheme.body2,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: _height * 0.008),
                          child: Text("Proteins", style: Theme.of(context).textTheme.body2,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: _height * 0.005, left: _width * 0.0075),
                          child: LinearPercentIndicator(
                            padding: EdgeInsets.all(0.0),
                            width: _width * 0.79,
                            lineHeight: 8.0,
                            percent: 0.5,
                            progressColor: Theme.of(context).accentColor,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: _height * 0.008),
                          alignment: Alignment.centerRight,
                          child: Text("80", style: Theme.of(context).textTheme.body2,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: _height * 0.008),
                          child: Text("Carbohydrates", style: Theme.of(context).textTheme.body2,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: _height * 0.005, left: _width * 0.0075),
                          child: LinearPercentIndicator(
                            padding: EdgeInsets.all(0.0),
                            width: _width * 0.79,
                            lineHeight: 8.0,
                            percent: 0.3,
                            progressColor: Colors.yellow,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: _height * 0.008),
                          alignment: Alignment.centerRight,
                          child: Text("20", style: Theme.of(context).textTheme.body2,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: _height * 0.02),
                          alignment: Alignment.bottomRight,
                          child: Text("See All", style: Theme.of(context).textTheme.body2.copyWith(color: Theme.of(context).accentColor, fontSize: 10, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.765, left: _width * 0.069, right: _width* 0.069),
                  width: _width,
                  height: _height * 0.0394,
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: _currentPageIndex == 0 ? Theme.of(context).accentColor : Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                          ),
                          width: _width * 0.285,
                          child: Text("Ingredients",
                            style: _currentPageIndex == 0 ? Theme.of(context).textTheme.body2.copyWith(color: Colors.white) : Theme.of(context).textTheme.body2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentPageIndex = 0;
                          });
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.007, bottom: _height * 0.007),
                        color: Theme.of(context).highlightColor,
                        width: 0.5,
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          width: _width * 0.285,
                          color: _currentPageIndex == 1 ? Theme.of(context).accentColor : Colors.white,
                          child: Text("Directions",
                            style: _currentPageIndex == 1 ? Theme.of(context).textTheme.body2.copyWith(color: Colors.white) : Theme.of(context).textTheme.body2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentPageIndex = 1;
                          });
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.007, bottom: _height * 0.007),
                        color: Theme.of(context).highlightColor,
                        width: 0.5,
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: _currentPageIndex == 2 ? Theme.of(context).accentColor : Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                          ),
                          width: _width * 0.285,
                          child: Text("Similar Recipes",
                            style: _currentPageIndex == 2 ? Theme.of(context).textTheme.body2.copyWith(color: Colors.white) : Theme.of(context).textTheme.body2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _currentPageIndex = 2;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 2.0, left: _width * 0.069, right: _width* 0.069),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _currentPageIndex == 0 ? _ingredientsList.length : _currentPageIndex == 1 ? _directionList.length: _similarRecipesList.length,
                  itemBuilder: (context, index) {
                    return _currentPageIndex == 0 ? _ingredientsTab(index) :  _currentPageIndex == 1 ? _directionTab(index) : _similarRecipesTab(index);
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tagContainer(String tag){
    return Container(
      width: _width*0.14,
      height: _height*0.035,
      margin: EdgeInsets.only(right: 3.0),
      decoration: BoxDecoration(
        color: Theme.of(context).highlightColor,
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(tag, style: TextStyle(color: Colors.white, fontSize: 10.0), ),
      ),
    );
  }

  Widget _ingredientsTab(int index){
    return Container(
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
      margin: EdgeInsets.only(bottom: _height * 0.02),
      width: _width,
      height: _height*0.064,
      child:Container(
        margin: EdgeInsets.only(left: _width*0.037,right: _width*0.037),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(_ingredientsList[index]["title"], style: Theme.of(context).textTheme.body2.copyWith(fontSize: 13.0)),
            Text(_ingredientsList[index]["availabilty"], style: Theme.of(context).textTheme.body2.copyWith(fontSize: 13.0, color: _ingredientsList[index]["color"])),
          ],
        ),
      ),

    );
  }

  Widget _directionTab(int index) {
    return Container(
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
      margin: EdgeInsets.only(bottom: _height * 0.02),
      width: _width,
      child: Container(
        margin: EdgeInsets.fromLTRB(_width * 0.037, _height * 0.01, _width * 0.037, _height * 0.01),
        child: Text(_directionList[index]["direction"], style: Theme
            .of(context)
            .textTheme
            .body2
            .copyWith(fontSize: 13.0)),
      ),
    );
  }
  
  Widget _similarRecipesTab(int index){
    return Container(
      height: _height * 0.26,
      margin: EdgeInsets.only(bottom: _height * 0.01),
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
      child: Column(
        children: <Widget>[
          Container(
            height: _height * 0.18,
            child: Stack(
              children: <Widget>[
                Container(
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0)),
                    image: DecorationImage(
                        image: AssetImage(
                            _similarRecipesList[index]["imageURL"]),
                        fit: BoxFit.fitWidth),
                  ),
                ),
                Container(
                  height: _height * 0.23,
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
                Positioned(
                  top: _height * 0.12,
                  left: _width * 0.02,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(_similarRecipesList[index]["name"], style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w500, fontSize: 20.0),),
                      ),
                      Container(
                        child: Text(_similarRecipesList[index]["subtitle"], style: Theme.of(context).textTheme.body2.copyWith(fontWeight: FontWeight.w500),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(_width * 0.02, _height * 0.006, _width * 0.02, _height * 0.001),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Serves - ",
                                style: Theme.of(context).textTheme.body2.copyWith(
                                    fontSize: 14.0,
                                ),
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.person,
                                size: 15,
                                color: Theme.of(context).highlightColor,
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.person,
                                size: 15,
                                color: Theme.of(context).highlightColor,
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.person,
                                size: 15,
                                color: Theme.of(context).highlightColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.006),
                        child: Text(
                          "Prepare Time",
                          style: Theme.of(context).textTheme.body2.copyWith(
                              fontSize: 10.0,
                              color: Theme.of(context).highlightColor.withOpacity(0.7),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.005, left: _width * 0.005),
                        child: LinearPercentIndicator(
                          padding: EdgeInsets.all(0.0),
                          width: _width * 0.35,
                          lineHeight: 5.0,
                          percent: _similarRecipesList[index]["time"] / 100,
                          progressColor: Theme.of(context).accentColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.005),
                  width: _width * 0.24,
                  height: _height * 0.034,
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    child: Text("Let's Make", style: Theme.of(context).textTheme.button.copyWith(fontSize: 10.0),),
                    onPressed: () {},
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
