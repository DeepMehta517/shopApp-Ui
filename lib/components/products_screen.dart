import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp/components/bodyparts.dart';
import 'package:shopapp/constant.dart';
import 'package:shopapp/models/proucts.dart';

class ProductScreen extends StatelessWidget {

  final Product products;

  const ProductScreen({Key key, this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        title: Text("DashBoard"),
        actions: <Widget>[
          IconButton(
              icon: SvgPicture.asset("assets/icons/notifiction.svg"),
              onPressed: () {})
        ],
      ),
      body: BodyParts(),
    );
  }
}
