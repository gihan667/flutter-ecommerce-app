import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class CardBody extends StatelessWidget {
  const CardBody({
    Key? key,
    required this.child,
    required this.onTap,
    required this.index,
    required this.width,
    required this.height,
  }) : super(key: key);

  final Widget child;
  final GestureTapCallback onTap;
  final int index;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(
          right: 29,
          left: index == 0 ? 36 : 0, // adding margin left only for first item
          top: 10,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: const Offset(0, 3),
              blurRadius: 12,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
