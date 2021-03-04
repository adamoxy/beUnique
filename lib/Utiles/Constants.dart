import 'package:flutter/material.dart';

String baseuRL = "https://api.tap-dating.com/api/v1/";
Color bgColor = Color(0xFF4B82FF);
Color textColor = Colors.white;

double hPadding = 15;
double vPadding = 15;
TextStyle textStyle(
    {bool isBold = false, double size = 14, Color color = Colors.white}) {
  return TextStyle(
      fontWeight: isBold ? FontWeight.bold : null,
      fontSize: size,
      color: color);
}

// double defualt
Widget MyRwaper({
  BuildContext context,
  double width,
  double height,
  double top,
  double bottom,
  double left,
  double right,
  Widget child,
}) {
  return Container(
    margin: EdgeInsets.only(
      left: left ?? width * .035,
      right: right ?? width * .035,
      top: top ?? width * .055,
      bottom: bottom ?? width * .055,
    ),
    child: child,
  );
}

Widget defaultPadding(
    {Widget child,
    double left,
    double right,
    double top,
    double bottom,
    Color color}) {
  return Container(
    margin: EdgeInsets.only(
        left: left ?? hPadding / 3,
        right: right ?? hPadding / 3,
        top: top ?? hPadding / 3,
        bottom: bottom ?? hPadding / 3),
    color: color,
    child: child,
  );
}
