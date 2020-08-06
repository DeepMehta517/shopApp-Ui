
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp/constant.dart';
import 'package:shopapp/models/proucts.dart';
import 'package:shopapp/widgets/ChatAndAddtochat.dart';
import 'package:shopapp/widgets/ListOfColors.dart';
import 'package:shopapp/widgets/productposter.dart';

import 'Colordots.dart';

class SecondScreenUi extends StatelessWidget {

  final Product product;
  const SecondScreenUi({
    Key key,
     @required this.size, this.image,this.product
}) : super(key:key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Hero(
                    tag: '${product.id}',
                    child: ProductPoster(size: size,
                    image: product.image,),
                  ),
                ),
                ListofColors(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:kDefaultPadding/2,horizontal: kDefaultPadding),
                  child: Text(product.title,
                  style: Theme.of(context).textTheme.headline6,),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding),
                  child: Text("\$${product.price}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor,
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical:kDefaultPadding/2,horizontal: kDefaultPadding),
                  child: Text(
                    product.description,
                    style: TextStyle(
                      color: kTextLightColor
                    ),
                  ),
                ),
                SizedBox(height: kDefaultPadding,)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ChatAndAddtoChat()
        ],
      ),
    );
  }
}
