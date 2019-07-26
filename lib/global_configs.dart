import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

final List<Map<String, dynamic>> productsOnCart = [
  {
    'productName': 'Blazer',
    'productImage': 'assets/products/blazer1.jpeg',
    'productNewPrice': 85,
    'productSize': 'M',
    'productColor': 'Red',
    'productQuantity': 2,
  },
  {
    'productName': 'Dress',
    'productImage': 'assets/products/dress1.jpeg',
    'productNewPrice': 110,
    'productSize': 'S',
    'productColor': 'Orange',
    'productQuantity': 1,
  },
  {
    'productName': 'Hills',
    'productImage': 'assets/products/hills1.jpeg',
    'productNewPrice': 100,
    'productSize': 'L',
    'productColor': 'Black',
    'productQuantity': 2,
  },
];

final List<Map<String, dynamic>> products = [
  {
    'productName': 'Blazer',
    'productImage': 'assets/products/blazer1.jpeg',
    'productOldPrice': 120,
    'productNewPrice': 85,
  },
  {
    'productName': 'Blazer',
    'productImage': 'assets/products/blazer2.jpeg',
    'productOldPrice': 130,
    'productNewPrice': 75,
  },
  {
    'productName': 'Dress',
    'productImage': 'assets/products/dress1.jpeg',
    'productOldPrice': 125,
    'productNewPrice': 80,
  },
  {
    'productName': 'Dress',
    'productImage': 'assets/products/dress2.jpeg',
    'productOldPrice': 140,
    'productNewPrice': 95,
  },
  {
    'productName': 'Hills',
    'productImage': 'assets/products/hills1.jpeg',
    'productOldPrice': 80,
    'productNewPrice': 65,
  },
  {
    'productName': 'Hills',
    'productImage': 'assets/products/hills2.jpeg',
    'productOldPrice': 80,
    'productNewPrice': 60,
  },
  {
    'productName': 'Pants',
    'productImage': 'assets/products/pants1.jpeg',
    'productOldPrice': 120,
    'productNewPrice': 85,
  },
  {
    'productName': 'Pants',
    'productImage': 'assets/products/pants2.jpeg',
    'productOldPrice': 130,
    'productNewPrice': 75,
  },
  {
    'productName': 'Shoes',
    'productImage': 'assets/products/shoe1.jpeg',
    'productOldPrice': 120,
    'productNewPrice': 85,
  },
  {
    'productName': 'Skirt',
    'productImage': 'assets/products/skt1.jpeg',
    'productOldPrice': 130,
    'productNewPrice': 75,
  },
  {
    'productName': 'Skirt',
    'productImage': 'assets/products/skt2.jpeg',
    'productOldPrice': 125,
    'productNewPrice': 85,
  },
];

final List<Map<String, String>> categories = [
  {
    'categoryImage': 'assets/categories/dress.png',
    'categoryCaption': 'Dress',
  },
  {
    'categoryImage': 'assets/categories/accessories.png',
    'categoryCaption': 'Accessories'
  },
  {
    'categoryImage': 'assets/categories/formal.png',
    'categoryCaption': 'Formal'
  },
  {
    'categoryImage': 'assets/categories/informal.png',
    'categoryCaption': 'Informal'
  },
  {'categoryImage': 'assets/categories/jeans.png', 'categoryCaption': 'Jeans'},
  {
    'categoryImage': 'assets/categories/tshirt.png',
    'categoryCaption': 'T-shirt'
  },
  {
    'categoryImage': 'assets/categories/shoe.png',
    'categoryCaption': 'Shoes',
  },
];

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
    autoplay: false,
    dotSize: 4,
    indicatorBgPadding: 10,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 1000),
    dotBgColor: Colors.transparent,
  ),
);
