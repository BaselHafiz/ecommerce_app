import 'package:flutter/material.dart';

import 'homepage_components/main_drawer.dart';
import 'homepage_components/horizontal_listview.dart';
import 'homepage_components/products_gridview.dart';
import 'global_configs.dart';

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
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('Recent Products', style: TextStyle(fontSize: 15)),
          ),
          ProductsGridView(),
        ],
      ),
    );
  }
}
