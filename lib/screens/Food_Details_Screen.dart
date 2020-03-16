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
  @override
  Widget build(BuildContext context) {
    Utils.setScreenSizes(context);

    final _width = Utils.bodyWidth;
    final _height = Utils.totalBodyHeight;

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
                            child: Text('Mexican Nachos', style: TextStyle(color: Colors.white, fontSize: 28.0),),
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
                                Text('07',style: TextStyle(fontSize: 33.0),),
                                Text('Ingredients',style: TextStyle(fontSize: 15.0),)
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
                                 Text('45',style: TextStyle(fontSize: 33.0),),
                                 Text('Minutes',style: TextStyle(fontSize: 15.0),)
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
                                 Text('5',style: TextStyle(fontSize: 33.0),),
                                 Text('Adults',style: TextStyle(fontSize: 15.0),)
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
                  child: Text('Tags',style: TextStyle(fontSize: 22.0),),
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
                  child: Text('Nutrition',style: TextStyle(fontSize: 22.0),),
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
                    color: Colors.green,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Text('Ingredients'),
                      ),
                      Container(
                        width: 1.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        margin: EdgeInsets.only(top: _height * 0.007,bottom: _height * 0.007),
                      ),
                      Container(
                        child: Text('Directions'),
                      ),
                      Container(
                        width: 1.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        margin: EdgeInsets.only(top: _height * 0.007,bottom: _height * 0.007),
                      ),
                      Container(
                        child: Text('Similar Recipes'),
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
}
