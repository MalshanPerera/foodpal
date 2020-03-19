import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';

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

  List<Map<String, dynamic>> _list = [
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
                  child: Image.asset('assets/images/home_background_image.png', fit: BoxFit.fill,),
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
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: _width*0.14,
                        height: _height*0.035,
                        margin: EdgeInsets.only(right: 3.0),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('Chicken', style: TextStyle(color: Colors.white, fontSize: 10.0), ),
                        ),
                      ),
                      Container(
                        width: _width*0.14,
                        height: _height*0.035,
                        margin: EdgeInsets.only(right: 3.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('Lunch', style: TextStyle(color: Colors.white,fontSize: 10.0), ),
                        ),
                      ),
                      Container(
                        width: _width*0.14,
                        height: _height*0.035,
                        margin: EdgeInsets.only(right: 3.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('Protien', style: TextStyle(color: Colors.white,fontSize: 10.0), ),
                        ),
                      ),
                      Container(
                        width: _width*0.14,
                        height: _height*0.035,
                        margin: EdgeInsets.only(right: 3.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('Low Carbs', style: TextStyle(color: Colors.white, fontSize: 10.0), ),
                        ),
                      ),
                      Container(
                        width: _width*0.14,
                        height: _height*0.035,
                        margin: EdgeInsets.only(right: 3.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('Meat', style: TextStyle(color: Colors.white, fontSize: 10.0), ),
                        ),
                      ),

                    ],
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
                    color: Colors.green,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: _height * 0.765, left: _width * 0.069, right: _width* 0.069),
                  width: _width,
                  height: _height * 0.0394,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Text('Ingredients',style: Theme.of(context).textTheme.body2.copyWith(fontSize: 12.0)),
                      ),
                      Container(
                        width: 1.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        margin: EdgeInsets.only(top: _height * 0.007,bottom: _height * 0.007),
                      ),
                      Container(
                        child: Text('Directions',style: Theme.of(context).textTheme.body2.copyWith(fontSize: 12.0)),
                      ),
                      Container(
                        width: 1.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        margin: EdgeInsets.only(top: _height * 0.007,bottom: _height * 0.007),
                      ),
                      Container(
                        child: Text('Similar Recipes',style: Theme.of(context).textTheme.body2.copyWith(fontSize: 12.0)),
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
                  itemCount: _directionList.length,
                  itemBuilder: (context, index) {
                    return _directionTab(index);
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _ingredientsTab(int index){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              15.0, // Move to right 10  horizontally
              50000.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      margin: EdgeInsets.only(top: 10.0),
      width: _width,
      height: _height*0.064,
      child:Container(
        margin: EdgeInsets.only(left: _width*0.037,right: _width*0.037),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(_list[index]["title"], style: Theme.of(context).textTheme.body2.copyWith(fontSize: 13.0)),
            Text(_list[index]["availabilty"], style: Theme.of(context).textTheme.body2.copyWith(fontSize: 13.0, color: _list[index]["color"])),
          ],
        ),
      ),

    );
  }

  Widget _directionTab(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              15.0, // Move to right 10  horizontally
              50000.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      margin: EdgeInsets.only(top: 10.0),
      width: _width,
      height: _height * 0.115,
      child: Container(
        margin: EdgeInsets.only(left: _width * 0.037, right: _width * 0.037),
        child: Text(_directionList[index]["direction"], style: Theme
            .of(context)
            .textTheme
            .body2
            .copyWith(fontSize: 13.0)),
      ),

    );
  }
}
