import 'package:flutter/material.dart';

import '../global_configs.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: Text('Shopping Cart'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildCartListView(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(right: 25, left: 40),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title:
                  Text('Total', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('\$85', style: TextStyle(fontSize: 16)),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {},
              child: Text('Check out', style: TextStyle(color: Colors.white)),
              color: Colors.red,
            )),
          ],
        ),
      ),
    );
  }
}

Widget _buildCartListView() {
  return ListView.builder(
    itemCount: productsOnCart.length,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: ListTile(
          contentPadding: EdgeInsets.all(15),
          leading: Image.asset(
            productsOnCart[index]['productImage'],
            width: 60,
          ),
          title: Text(productsOnCart[index]['productName'],
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Column(
            children: <Widget>[
              SizedBox(height: 7),
              Row(
                children: <Widget>[
                  Text('Size   : '),
                  Padding(
                    padding: EdgeInsets.only(right: 50),
                    child: Text('${productsOnCart[index]['productSize']}',
                        style: TextStyle(color: Colors.red)),
                  ),
                  Text('Color : '),
                  Text('${productsOnCart[index]['productColor']}',
                      style: TextStyle(color: Colors.red)),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: <Widget>[
                  Text('Price : '),
                  Text(
                    '\$${productsOnCart[index]['productNewPrice']}',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
          trailing: new Container(
            height: 60,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    child: Icon(Icons.arrow_drop_up),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 7),
                Expanded(
                  child:
                      Text(productsOnCart[index]['productQuantity'].toString()),
                ),
                Expanded(
                  child: InkWell(
                    child: Icon(Icons.arrow_drop_down),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
