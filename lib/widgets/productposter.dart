import 'package:flutter/material.dart';
import 'package:shopapp/models/proucts.dart';

import '../constant.dart';


class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key key,
    @required this.size, this.image, this.product,
  }) : super(key:key);

  final Size size;
  final String image;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
