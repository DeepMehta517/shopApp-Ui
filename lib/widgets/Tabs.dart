import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/constant.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int selectindex = 0;
  List categories = [
    "All",
    'Chandler',
    'joey',
    'Ross',
    'Phooebe',
    'monica',
    'Rachel'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            setState(() {
              selectindex=index;
            });

          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: kDefaultPadding,
                right: index == categories.length-1? kDefaultPadding : 0),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: index == selectindex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        itemCount: categories.length,
      ),
    );
  }
}
