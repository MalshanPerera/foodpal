import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';


class FavoiuritesScreen extends StatelessWidget {

  final _width = Utils.bodyWidth;
  final _height = Utils.totalBodyHeight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
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
                        child: Text("Favourites", style: Theme.of(context).textTheme.title,),
                      ),
                      Container(
                        child: Text("Ingredients", style: Theme.of(context).textTheme.body1,),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: _height*0.172,
                  left: _width*0.069,
                  child: Container(
                    height: 0.186*_height,
                    child: Row(
                      children: <Widget>[
                          _favInv('assets/images/foodImageOne.png', "Apples")
                      ],
                    ),
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _favInv (String imagePath , String name){
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          width: 0.349*_width,
            child: Image.asset(imagePath, fit: BoxFit.fill,),
        ),
        Container(
          width: 0.349*_width,
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
      ],
    );
  }
}
