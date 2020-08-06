import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/components/detailsScreen.dart';
import 'package:shopapp/models/proucts.dart';
import 'package:shopapp/widgets/CardType.dart';
import 'package:shopapp/widgets/SearchBar.dart';
import 'package:shopapp/widgets/Tabs.dart';

class BodyParts extends StatelessWidget {

  final Product product;

  const BodyParts({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(children: <Widget>[
        SearchBar(),
        Tabs(),
        SizedBox(
          height: 40,
        ),
        Expanded(
            child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
            ),
            ListView.builder(
              itemBuilder: (context, index) => CardType(
                itemIndex: index,
                product: products[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          product: products[index],
                        ),
                      ));
                },
              ),
              itemCount: products.length,
            )
          ],
        )),
      ]),
    );
  }
}
