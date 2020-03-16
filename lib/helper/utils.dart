import 'package:flutter/material.dart';

class Utils {

  //Call these variables to get initialized screen sizes//

  static final double appBarHeight = AppBar().preferredSize.height;  //app bar height
  static double statusBarHeight; //status bar height
  static double totalBodyHeight;  //total screen height without appbar or status bar
  static double reducedBodyHeight;  //body height with appbar and status bar reduced
  static double contentBodyHeight;  //body height with appbar and status bar and bottom navigation bar reduced
  static double bodyWidth;  //total screen width

  //Currency
  static String currency;

  //Set once in splash screen
  static setScreenSizes (BuildContext context){

    statusBarHeight = MediaQuery.of(context).padding.top;
    bodyWidth = MediaQuery.of(context).size.width;
    totalBodyHeight = MediaQuery.of(context).size.height;

    reducedBodyHeight = totalBodyHeight - appBarHeight - statusBarHeight;
    contentBodyHeight = reducedBodyHeight * 0.866;

  }

  static getDesignWidth(designMargin){
    return (designMargin / 812) * bodyWidth;
  }

  static getDesignHeight(designMargin){
    return (designMargin / 812) * totalBodyHeight;
  }


}