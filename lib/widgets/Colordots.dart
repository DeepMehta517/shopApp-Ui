import 'package:flutter/material.dart';

import '../constant.dart';


class Colorsdot extends StatelessWidget {
  const Colorsdot({
    Key key, this.fillColor,

  }) : super(key:key);

  final Color fillColor;
  final bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: kDefaultPadding/2.5,) ,
      padding:EdgeInsets.all(3) ,
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Color(0xFF7077070) :Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}

