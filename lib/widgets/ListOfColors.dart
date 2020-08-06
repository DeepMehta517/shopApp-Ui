import 'package:flutter/material.dart';

import '../constant.dart';
import 'Colordots.dart';

class ListofColors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Colorsdot(
            fillColor: Color(0xFF88989A),
//                      isSelected:true,
          ), Colorsdot(
            fillColor: Color(0xFFFF5200),
//                      isSelected:true,
          ), Colorsdot(
            fillColor:kPrimaryColor,
//                      isSelected:true,
          ),
        ],
      ),
    );
  }
}
