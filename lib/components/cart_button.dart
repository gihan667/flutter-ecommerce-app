import 'package:flutter/material.dart';

import '../constants.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100.0,
        height: 40.0,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 30.0,
                width: 90.0,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  'Cart',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 40.0,
                height: 40.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      offset: const Offset(0, 1),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Text(
                  '+',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
