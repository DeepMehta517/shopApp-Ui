import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class ChatAndAddtoChat extends StatelessWidget {

  const ChatAndAddtoChat({
    Key key,
}) :super(key:key);
  @override
  Widget build(BuildContext context) {
    return  Container(margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding
    ),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding/2,
      ),
      decoration: BoxDecoration(
        color:Color(0xFFFCBF1E),
        borderRadius:BorderRadius.circular(30),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset("assets/icons/chat.svg",
            height: 18,),
          SizedBox(
            width:kDefaultPadding/2 ,
          ),
          Text(
            "Chat",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Spacer(),
          FlatButton.icon(onPressed:(){}, icon:  SvgPicture.asset("assets/icons/shoppingbag.svg",height: 18,), label: Text("Add to cart",style: TextStyle(
              color: Colors.white

          ),))
        ],
      ),
    );
  }
}
