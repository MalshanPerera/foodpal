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

  List<Map<String, String>> _frequentIngredientsList = [
    {"imagePath": "assets/images/ingredients1.jpg", "name": "Strawberries"},
    {"imagePath": "assets/images/ingredients2.jpg", "name": "Mandarins"},
    {"imagePath": "assets/images/ingredients3.jpg", "name": "Spinach"},
    {"imagePath": "assets/images/ingredients4.jpg", "name": "BeetRoot"},
    {"imagePath": "assets/images/ingredients5.jpg", "name": "Cucumber"}
  ];

  List<Map<String,String>> _fruitIngredients = [
    {
      "":"",

    }
  ];


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
      backgroundColor: Theme.of(context).backgroundColor,
        body: Column(children: <Widget>[
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
                decoration: BoxDecoration(
                    color: _currentPageIndex == 0
                        ? Theme.of(context).primaryColor
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6.0),
                        bottomLeft: Radius.circular(6.0))),
                height: Utils.getDesignHeight(32),
                width: Utils.getDesignWidth(77),
                alignment: Alignment.center,
                child: Text(
                  "Fruits",
                  style: _currentPageIndex == 0
                      ? Theme.of(context)
                          .textTheme
                          .body2
                          .copyWith(color:Colors.white)
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
              width: 0.5,
            ),
            InkWell(
              child: Container(
                height: Utils.getDesignHeight(32),
                width: Utils.getDesignWidth(77),
                alignment: Alignment.center,
                color: _currentPageIndex == 1
                    ? Theme.of(context).primaryColor
                    : Colors.white,
                child: Text(
                  "Meat",
                  style: _currentPageIndex == 1
                      ? Theme.of(context)
                          .textTheme
                          .body2
                          .copyWith(color: Colors.white)
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
                    : Colors.white,
                child: Text(
                  "Dairy",
                  style: _currentPageIndex == 2
                      ? Theme.of(context)
                          .textTheme
                          .body2
                          .copyWith(color: Colors.white)
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
              width: 0.5,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6.0),
                      bottomRight: Radius.circular(6.0)),
                  color: _currentPageIndex == 3
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                ),
                height: Utils.getDesignHeight(32),
                width: Utils.getDesignWidth(77),
                alignment: Alignment.center,
                child: Text(
                  "Vegetables",
                  style: _currentPageIndex == 3
                      ? Theme.of(context)
                          .textTheme
                          .body2
                          .copyWith(color: Colors.white)
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
      Expanded(
        child: Container(
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
      ),
    ]));
  }

  Widget ingredientList() {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(bottom: Utils.getDesignHeight(25), top: Utils.getDesignHeight(25)),
        child: ingredientCard(),
      ),
    );
  }

  Widget ingredientCard() {
    return Container(
      margin: EdgeInsets.only(left: _width * 0.069 , right: _width*0.069),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).hintColor,
                  blurRadius: 10.0,
                  spreadRadius: 3.0,
                  offset: Offset(
                    0.0, // horizontal, move right 10
                    5.0, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: CircleAvatar(
                radius: Utils.getDesignWidth(49.5),
                backgroundColor: Theme.of(context).backgroundColor,
                child: Image.asset('assets/images/grape-ingrediant.png')),
          ),
          Container(
            margin: EdgeInsets.only(left: Utils.getDesignWidth(19)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: AutoSizeText(
                    'Green Grapes',
                    style: Theme.of(context).textTheme.body2.copyWith(fontSize: 14 , fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  child: AutoSizeText(
                    '500g',
                    style: Theme.of(context).textTheme.body2.copyWith(color: Color(0xffFF5353), fontSize: 14 , fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: Utils.getDesignHeight(15)),
                  child: AutoSizeText(
                    '600 cal(100g)',
                    style: Theme.of(context)
                        .textTheme
                        .body2
                        .copyWith(color: Theme.of(context).primaryColor , fontSize: 14 , fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Icon(
                  Icons.favorite_border,
                  color: Theme.of(context).accentColor,
                  size: 20,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: Utils.getDesignHeight(15), left: Utils.getDesignWidth(55)),
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
          return _frequentlyInv(
              _frequentIngredientsList[index]["imagePath"],
              _frequentIngredientsList[index]["name"],
              context);
        },
      ),
    );
  }

  Widget _frequentlyInv(String imagePath, String name, BuildContext context) {
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

}
