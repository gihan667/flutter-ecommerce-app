import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar({
  Widget? title,
  Widget? leading,
  List<Widget>? actions,
  Color? color,
}) {
  return AppBar(
    elevation: 0,
    title: title,
    backgroundColor: color ?? kPrimaryColor,
    actions: actions,
    automaticallyImplyLeading: false, // this should be false :)
    titleSpacing: 0,
    leading: leading,
  );
}
