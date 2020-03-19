import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:foodpal/helper/utils.dart';

class InventoryScreen extends StatefulWidget {
  @override
  _InventoryScreenState createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  final _width = Utils.bodyWidth;
  final _height = Utils.totalBodyHeight;

  int _currentPageIndex = 0;

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
            child: Column(children: <Widget>[
      Stack(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: _width,
              height: Utils.getDesignHeight(259),
              child: Image.asset(
                'assets/images/home_background_image.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: _width,
              height: Utils.getDesignHeight(56),
            ),
          ],
        ),
        Positioned(
          top: Utils.getDesignHeight(44),
          left: Utils.getDesignWidth(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  "Your Inventory",
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Container(
                child: Text(
                  "Freequently used",
                  style: Theme.of(context).textTheme.body1,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: Utils.getDesignHeight(142),
          left: Utils.getDesignWidth(28),
          height: Utils.getDesignHeight(151),
          child: _frequentList(),
        ),
      ]),
      Container(
        margin: EdgeInsets.only(
            left: Utils.getDesignWidth(28), right: Utils.getDesignWidth(28)),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
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
        height: Utils.getDesignHeight(32),
        child: Row(
          children: <Widget>[
            InkWell(
              child: Container(
                height: Utils.getDesignHeight(32),
                width: Utils.getDesignWidth(77),
                alignment: Alignment.center,
                color: _currentPageIndex == 0
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).backgroundColor,
                child: Text(
                  "Fruits",
                  style: _currentPageIndex == 0
                      ? Theme.of(context)
                          .textTheme
                          .body2
                          .copyWith(color: Theme.of(context).backgroundColor)
                      : Theme.of(context).textTheme.body2,
                  textAlign: TextAlign.center,
                ),
              ),
              onTap: () {
                setState(() {
                  _controller.animateToPage(
                    0,
                    duration: Duration(milliseconds: 300),
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
              width: 1,
            ),
            InkWell(
              child: Container(
                height: Utils.getDesignHeight(32),
                width: Utils.getDesignWidth(77),
                alignment: Alignment.center,
                color: _currentPageIndex == 1
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).backgroundColor,
                child: Text(
                  "Meat",
                  style: _currentPageIndex == 1
                      ? Theme.of(context)
                          .textTheme
                          .body2
                          .copyWith(color: Theme.of(context).backgroundColor)
                      : Theme.of(context).textTheme.body2,
                  textAlign: TextAlign.center,
                ),
              ),
              onTap: () {
                setState(() {
                  _controller.animateToPage(
                    1,
                    duration: Duration(milliseconds: 300),
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
              width: 1,
            ),
            InkWell(
              child: Container(
                height: Utils.getDesignHeight(32),
                width: Utils.getDesignWidth(77),
                alignment: Alignment.center,
                color: _currentPageIndex == 2
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).backgroundColor,
                child: Text(
                  "Dairy",
                  style: _currentPageIndex == 2
                      ? Theme.of(context)
                          .textTheme
                          .body2
                          .copyWith(color: Theme.of(context).backgroundColor)
                      : Theme.of(context).textTheme.body2,
                  textAlign: TextAlign.center,
                ),
              ),
              onTap: () {
                setState(() {
                  _controller.animateToPage(
                    2,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                  _currentPageIndex = 2;
                });
              },
            ),
            Container(
              margin: EdgeInsets.only(
                  top: _height * 0.007, bottom: _height * 0.007),
              color: Theme.of(context).highlightColor,
              width: 1,
            ),
            InkWell(
              child: Container(
                height: Utils.getDesignHeight(32),
                width: Utils.getDesignWidth(77),
                alignment: Alignment.center,
                color: _currentPageIndex == 3
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).backgroundColor,
                child: Text(
                  "Vegetables",
                  style: _currentPageIndex == 3
                      ? Theme.of(context)
                          .textTheme
                          .body2
                          .copyWith(color: Theme.of(context).backgroundColor)
                      : Theme.of(context).textTheme.body2,
                  textAlign: TextAlign.center,
                ),
              ),
              onTap: () {
                setState(() {
                  _controller.animateToPage(
                    3,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                  _currentPageIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: Utils.getDesignHeight(15)),
        color: Theme.of(context).backgroundColor,
        height: _height,
        child: PageView(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ingredientList(),
            ingredientList(),
            ingredientList(),
            ingredientList(),
          ],
          onPageChanged: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
        ),
      ),
    ])));
  }
  Widget ingredientList(){
   return  ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,
      ),
      itemCount: 20,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.all(8.0),
        child: ingredientCard(),
      ),
    );
  }
  Widget ingredientCard() {
    return Container(
      height: Utils.getDesignHeight(136),
      width: Utils.getDesignWidth(321),
      padding: EdgeInsets.only(left: _width * 0.069),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            elevation: 11.0,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAlias,
            child: CircleAvatar(
                radius: Utils.getDesignWidth(49.5),
                backgroundColor: Theme.of(context).backgroundColor,
                child: Image.asset('assets/images/grape-ingrediant.png')),
          ),
          Container(
            margin: EdgeInsets.only(left: Utils.getDesignWidth(19)),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: Utils.getDesignHeight(10)),
                  child: AutoSizeText(
                    'Green Grapes',
                    style: Theme.of(context).textTheme.body2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: Utils.getDesignHeight(5)),
                  child: AutoSizeText(
                    '500g',
                    style: Theme.of(context).textTheme.body2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: Utils.getDesignHeight(15)),
                  child: AutoSizeText(
                    '600 cal(100g)',
                    style: Theme.of(context)
                        .textTheme
                        .body2
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: Utils.getDesignHeight(10)),
                  child: AutoSizeText(
                    '-100g',
                    style: Theme.of(context)
                        .textTheme
                        .body2
                        .copyWith(color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                  width: Utils.getDesignWidth(20),
                  margin: EdgeInsets.only(
                      top: Utils.getDesignHeight(15),
                      left: Utils.getDesignWidth(104)),
                  child: Image.asset('assets/images/like.png')),
              Container(
                  margin: EdgeInsets.only(top: Utils.getDesignHeight(15)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Image.asset('assets/images/minus.png'),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              left: Utils.getDesignWidth(15),
                              right: Utils.getDesignWidth(15)),
                          child: AutoSizeText(
                            '2',
                            style: Theme.of(context).textTheme.body2,
                          )),
                      Container(
                        child: Image.asset('assets/images/plus.png'),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }

  Widget _frequentList() {
    return Container(
      width: _width,
      child: ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.only(right: _width * 0.069),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _ingredientListTile();
        },
      ),
    );
  }

  Widget _ingredientListTile() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage('assets/images/grapes.png'),
              fit: BoxFit.cover)),
      height: Utils.getDesignHeight(151),
      width: Utils.getDesignWidth(131),
      margin: EdgeInsets.only(right: Utils.getDesignWidth(12)),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              margin: EdgeInsets.only(bottom: Utils.getDesignHeight(15)),
              child: AutoSizeText(
                "Green Grapes",
                minFontSize: 14,
                maxFontSize: 16,
              ))),
    );
  }
}
