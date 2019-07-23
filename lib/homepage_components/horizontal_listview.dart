import 'package:flutter/material.dart';

import '../global_configs.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildCategoryListTile(
              categories[0]['categoryImage'], categories[0]['categoryCaption']),
          _buildCategoryListTile(
              categories[1]['categoryImage'], categories[1]['categoryCaption']),
          _buildCategoryListTile(
              categories[2]['categoryImage'], categories[2]['categoryCaption']),
          _buildCategoryListTile(
              categories[3]['categoryImage'], categories[3]['categoryCaption']),
          _buildCategoryListTile(
              categories[4]['categoryImage'], categories[4]['categoryCaption']),
          _buildCategoryListTile(
              categories[5]['categoryImage'], categories[5]['categoryCaption']),
          _buildCategoryListTile(
              categories[6]['categoryImage'], categories[6]['categoryCaption'])
        ],
      ),
    );
  }
}

Widget _buildCategoryListTile(String categoryImage, String categoryCaption) {
  return Container(
    width: 100,
    child: InkWell(
      onTap: () {},
      child: ListTile(
        title: Image.asset(
          categoryImage,
          height: 60,
          width: 110,
        ),
        subtitle: Container(
          padding: EdgeInsets.only(top: 4),
          alignment: Alignment.topCenter,
          child: Text(categoryCaption,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        ),
      ),
    ),
  );
}
