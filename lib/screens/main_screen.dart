import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';
import 'package:foodpal/screens/favourites_screen.dart';
import 'package:foodpal/screens/home_screen.dart';
import 'package:foodpal/screens/inventory_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final _height = Utils.totalBodyHeight;

  int _currentIndex = 1;

  List<Widget> allDestinations = [
    InventoryScreen(),
    HomeScreen(),
    FavoiuritesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: allDestinations.map((screen) {
            return screen;
          }).toList(),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        height: _height * 0.08,
        buttonBackgroundColor: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).backgroundColor,
        items: <Widget>[
          Icon(Icons.assignment, size: 30, color: _currentIndex  == 0 ? Colors.white : Theme.of(context).highlightColor),
          Icon(Icons.list, size: 30, color: _currentIndex  == 1 ? Colors.white : Theme.of(context).highlightColor),
          Icon(Icons.favorite, size: 30, color: _currentIndex  == 2 ? Colors.white : Theme.of(context).highlightColor),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class Destination {
  const Destination(this.title, this.icon, this.widget);
  final String title;
  final IconData icon;
  final Widget widget;
}

