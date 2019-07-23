import 'package:flutter/material.dart';

import '../global_configs.dart';
import '../pages/product_details.dart';

class ProductsGridView extends StatefulWidget {
  @override
  _ProductsGridViewState createState() => _ProductsGridViewState();
}

class _ProductsGridViewState extends State<ProductsGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return _buildProductGridViewItem(
            '${products[index]['productName']}',
            '${products[index]['productImage']}',
            products[index]['productOldPrice'],
            products[index]['productNewPrice'],
            context,
            index,
          );
        },
      ),
    );
  }
}

Widget _buildProductGridViewItem(String productName, String productImage,
    int productOldPrice, int productNewPrice, BuildContext context, int productIndex) {
  return Card(
    child: Hero(
      tag: productIndex.toString(),
      child: Material(
        child: InkWell(
          onTap: () {
            print(productIndex);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return ProductDetails(productName: productName);
            }));
          },
          child: GridTile(
            child: Image.asset(
              productImage,
              fit: BoxFit.cover,
            ),
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 10),
                  child: Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(
                  '\$${productNewPrice.toString()}',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
                subtitle: Text(
                  '\$${productOldPrice.toString()}',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
