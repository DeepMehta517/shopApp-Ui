import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/constant.dart';
import 'package:shopapp/models/proucts.dart';

class CardType extends StatelessWidget {

  const CardType({
    Key key,
    this.itemIndex, this.product, this.press}):super(key:key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
          margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          height: 160,
          child: InkWell(
            onTap: press,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  height: 136,
                  decoration: BoxDecoration(
                      color:itemIndex.isEven?kBlueColor:kSecondaryColor,
                      borderRadius: BorderRadius.circular(22)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [kDefaultShadow],
                    ),
                    margin: EdgeInsets.only(right: 10),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Hero(
                    tag: '${product.id}',
                    child: Container(

                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      height: 160,
                      width: 200,
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 0,
                    top: 30,
                    child: SizedBox(
                      height: 136,
                      width: size.width - 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kDefaultPadding),
                            child: Text(
                             product.title,
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: kDefaultPadding*1.5,
                              vertical: kDefaultPadding/4,
                            ),
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius:BorderRadius.only(topRight: Radius.circular(20.0))
                            ),
                            child: Text("\$${product.price}"),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
    );
  }
}
