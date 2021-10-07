import 'package:ecommerce_app/components/app_bar.dart';
import 'package:ecommerce_app/components/cart_button.dart';
import 'package:ecommerce_app/components/main_body.dart';
import 'package:ecommerce_app/components/primary_button.dart';
import 'package:ecommerce_app/components/rounded_icon_button.dart';
import 'package:ecommerce_app/models/products_model.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'components/product_images.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              child: RoundedIconButton(
                onTap: () {
                  Navigator.pop(context);
                },
                icon: 'assets/icons/arrow.svg',
              ),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: SvgPicture.asset(
                'assets/icons/cart.svg',
              ),
            ),
          )
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: EdgeInsets.only(
          left: 50,
          right: 37,
          bottom: 30,
        ),
        child: PrimaryButton(
          onTap: () {},
          text: "Buy Now",
        ),
      ),
      body: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        child: Column(
          children: [
            Hero(
              tag: product.id,
              child: Image.asset(
                product.images[0],
                width: SizeConfig.getScreenPropotionWidth(250),
                height: SizeConfig.getScreenPropotionWidth(250),
              ),
            ),
            Expanded(
              child: MainBody(
                padding: EdgeInsets.only(
                  left: 50,
                  top: 43,
                  right: 37,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${product.price}',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CartButton(
                            onTap: () {},
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Photos',
                        style: TextStyle(
                          color: kTextLightColor,
                          fontSize: 22.0,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ProductImages(product: product),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        product.modelNo,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16.0,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: product.rating,
                        allowHalfRating: false,
                        itemCount: product.rating.toInt(),
                        ignoreGestures: true, // this disables the change star rating
                        itemSize: 20,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: kPrimaryColor,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        product.description,
                        style: TextStyle(
                          color: kTextLightColor,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
