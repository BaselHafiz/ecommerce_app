import 'package:flutter/material.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red.shade900
      ),
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      home: Login(),
    );
  }
}

