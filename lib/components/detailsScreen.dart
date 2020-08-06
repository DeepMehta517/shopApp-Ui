import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopapp/constant.dart';
import 'package:shopapp/models/proucts.dart';
import 'package:shopapp/widgets/SecondScreenUi.dart';

class DetailsPage extends StatelessWidget {

  final Product product;

  const DetailsPage({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10),
          child: IconButton(
              icon: SvgPicture.asset("assets/icons/back.svg"),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          child: Text(
            "Back",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: SvgPicture.asset("assets/icons/cardwithitem.svg"),
              onPressed: () {})
        ],
      ),
      backgroundColor: kPrimaryColor,
      body: SecondScreenUi(
        product: product,
      ),
    );
  }
}
