import 'package:beunique_day1/Utiles/Constants.dart';
import 'package:flutter/material.dart';

class BasicInfoRow extends StatelessWidget {
  final String varKey;
  final String value;
  final double width;
  final double height;
  BasicInfoRow({this.varKey, this.value, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            varKey,
            style: textStyle(
              size: 17,
            ),
          ),
          Text(
            value,
            style: textStyle(size: 15, isBold: true),
          )
        ],
      ),
    );
  }
}
