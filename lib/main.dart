import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
    height: 250,
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
//          header
            UserAccountsDrawerHeader(
              accountName: Text('Basel Hafiz'),
              accountEmail: Text('baselhafiz@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
//          body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Accounts'),
                leading: Icon(Icons.person),
                onTap: () {},
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
                onTap: () {},
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
                onTap: () {},
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
                onTap: () {},
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue),
                onTap: () {},
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
      body: ListView(
          children: <Widget>[
            imageCarousel
          ],
        ),
    );
  }
}
