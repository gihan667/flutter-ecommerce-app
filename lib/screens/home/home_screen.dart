import 'package:ecommerce_app/components/app_bar.dart';
import 'package:ecommerce_app/components/card_body.dart';
import 'package:ecommerce_app/components/main_body.dart';
import 'package:ecommerce_app/components/product_card_bottom.dart';
import 'package:ecommerce_app/components/rounded_icon_button.dart';
import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/models/category_model.dart';
import 'package:ecommerce_app/models/products_model.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/best_selling_section.dart';
import 'components/category_section.dart';
import 'components/product_slider.dart';
import 'components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                onTap: () {},
                icon: 'assets/icons/hamburger.svg',
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
      body: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text(
                'Explore your\nfavourite products',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SearchBar(),
            SizedBox(
              height: 28,
            ),
            Expanded(
              child: MainBody(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CategorySection(),
                      SizedBox(
                        height: 30,
                      ),
                      ProductSlider(),
                      Padding(
                        padding: EdgeInsets.only(left: 42),
                        child: Text(
                          'Best Selling',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BestSellingSection(),
                      SizedBox(
                        height: 30,
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
