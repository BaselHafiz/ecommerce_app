import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/shopping_cart.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // header
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
          // body
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home, color: Colors.red),
              onTap: () {},
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person, color: Colors.red),
              onTap: () {},
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_basket, color: Colors.red),
              onTap: () {},
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Shopping Cart'),
              leading: Icon(Icons.shopping_cart, color: Colors.red),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ShoppingCart();
                }));
              },
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Favorites'),
              leading: Icon(Icons.favorite, color: Colors.red),
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
    );
  }
}
