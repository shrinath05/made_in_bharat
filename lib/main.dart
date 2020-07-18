import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:madeinbharat/components/horizontal_listview.dart';
import 'package:madeinbharat/components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 3.0,
        indicatorBgPadding: 9.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Made In Bharat',
          style: new TextStyle(fontSize: 25.0),
        ),
        //titleSpacing: 53.0,
//        bottom: PreferredSize(
//          child: Text(
//            '"जय जवान - जय किसान"',
//            style: new TextStyle(
//              fontSize: 25.0,
//              color: Colors.black87,
//            ),
//          ),
//          preferredSize: Size.fromHeight(10.0),
//        ),
        actions: <Widget>[
          InkWell(
            onTap: () {},
            child: SizedBox(
              width: 20.0,
              child: new Icon(Icons.search),
              height: 100.0,
            ),
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              width: 50.0,
              child: new Icon(Icons.add_shopping_cart),
            ),
          ),
          InkWell(
            onTap: () {},
            child: SizedBox(
              height: 1.0,
              child: new Icon(Icons.more_vert),
            ),
          ),
//          new IconButton(
//            icon: Icon(
//              Icons.search,
//            ),
//            onPressed: () {},
//            color: Colors.white,
////          ),
//          new IconButton(
//            icon: Icon(Icons.shopping_cart),
//            onPressed: () {},
//            color: Colors.white,
//          ),
//          new IconButton(
//            icon: Icon(Icons.more_vert),
//            onPressed: () {},
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
// header
            new UserAccountsDrawerHeader(
              accountName: Text('Shrinath R K'),
              accountEmail: Text('shrinath.rk05@hotmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
            ),

            // body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green),
              ),
            )
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          // image carousel begins here
          image_carousel,

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Text('Categories'),
          ),
          // Horizontal
          HorizonatalList(),

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),
          ),
          //grid view
          Container(
            height: 500.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
