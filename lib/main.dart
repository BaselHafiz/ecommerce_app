import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'homepage_components/main_drawer.dart';
import 'homepage_components/horizontal_listview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  Widget imageCarousel = Container(
    height: 220,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/m1.jpeg'),
        AssetImage('assets/m2.jpeg'),
        AssetImage('assets/m3.jpeg'),
        AssetImage('assets/m4.jpeg'),
        AssetImage('assets/m5.jpeg'),
        AssetImage('assets/m6.jpeg'),
        AssetImage('assets/m7.jpeg'),
        AssetImage('assets/m8.jpeg'),
        AssetImage('assets/m9.jpeg'),
      ],
      autoplay: true,
      dotSize: 4,
      indicatorBgPadding: 10,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: Text('Shop App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: ListView(
        children: <Widget>[
          imageCarousel,
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('Categories', style: TextStyle(fontSize: 15)),
          ),
          HorizontalListView(),
        ],
      ),
    );
  }
}
